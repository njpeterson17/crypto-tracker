#!/bin/bash

# Bitcoin Tracker Deployment Script
# This script helps deploy the website to various platforms

echo "🚀 Bitcoin Tracker Deployment Script"
echo "===================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

show_menu() {
    echo "Choose a deployment option:"
    echo ""
    echo -e "${BLUE}1)${NC} Netlify Drop (Easiest - Drag & Drop)"
    echo -e "${BLUE}2)${NC} Vercel CLI"
    echo -e "${BLUE}3)${NC} GitHub Pages (Auto-deploy)"
    echo -e "${BLUE}4)${NC} Surge.sh"
    echo -e "${BLUE}5)${NC} Exit"
    echo ""
}

deploy_netlify() {
    echo -e "${YELLOW}Netlify Deployment${NC}"
    echo ""
    echo "Opening Netlify Drop in your browser..."
    echo "Drag and drop this folder to deploy instantly!"
    echo ""
    
    if command -v xdg-open &> /dev/null; then
        xdg-open "https://app.netlify.com/drop" &
    elif command -v open &> /dev/null; then
        open "https://app.netlify.com/drop" &
    else
        echo "Please visit: https://app.netlify.com/drop"
    fi
}

deploy_vercel() {
    echo -e "${YELLOW}Vercel Deployment${NC}"
    echo ""
    
    if ! command -v vercel &> /dev/null; then
        echo "Vercel CLI not found. Installing..."
        npm install -g vercel
    fi
    
    echo "Deploying to Vercel..."
    vercel --prod
}

deploy_github() {
    echo -e "${YELLOW}GitHub Pages Setup${NC}"
    echo ""
    echo "To deploy to GitHub Pages:"
    echo ""
    echo "1. Create a new repository on GitHub"
    echo "2. Push these files to the repository:"
    echo ""
    echo -e "   ${GREEN}git init${NC}"
    echo -e "   ${GREEN}git add .${NC}"
    echo -e "   ${GREEN}git commit -m 'Initial commit'${NC}"
    echo -e "   ${GREEN}git branch -M main${NC}"
    echo -e "   ${GREEN}git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git${NC}"
    echo -e "   ${GREEN}git push -u origin main${NC}"
    echo ""
    echo "3. Go to Settings → Pages on GitHub"
    echo "4. Select 'GitHub Actions' as the source"
    echo "5. Your site will be live automatically!"
}

deploy_surge() {
    echo -e "${YELLOW}Surge.sh Deployment${NC}"
    echo ""
    
    if ! command -v surge &> /dev/null; then
        echo "Surge not found. Installing..."
        npm install -g surge
    fi
    
    echo "Deploying to Surge..."
    surge . --domain btc-tracker.surge.sh
}

# Main loop
while true; do
    show_menu
    read -p "Enter your choice (1-5): " choice
    
    case $choice in
        1)
            deploy_netlify
            break
            ;;
        2)
            deploy_vercel
            break
            ;;
        3)
            deploy_github
            break
            ;;
        4)
            deploy_surge
            break
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done

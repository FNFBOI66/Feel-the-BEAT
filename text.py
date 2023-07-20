import pygame
# Initialize pygame
pygame.init()
# Set the screen width and height
screen_width = 800
screen_height = 600
# Create the screen
screen = pygame.display.set_mode((screen_width, screen_height))
# Set the window title
pygame.display.set_caption("Rhythm Game Template")
# Load the background image
background_image = pygame.image.load("background.png")
# Define the colors
white = (255, 255, 255)
# Set the clock for controlling the FPS
clock = pygame.time.Clock()
# Game variables
score = 0
# Game loop
running = True
while running:
    # Clear the screen
    screen.fill(white)
    
    # Draw the background image
    screen.blit(background_image, (0, 0))
    
    # Handle events
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == pygame.KEYDOWN:
            # Handle key presses here
            if event.key == pygame.K_SPACE:
                # Space key is pressed, perform action
                score += 1
    
    # Update the display
    pygame.display.flip()
    
    # Control the FPS
    clock.tick(60)
# Quit pygame
pygame.quit()

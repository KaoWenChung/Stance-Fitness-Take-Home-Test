# Stance Fitness Take-Home Test

## Time Tracking

- **Start Time:** 3:02 PM
- **End Time:** 4:51 PM

All work is recorded with git commit logs

## Features

### Core Tasks Implemented

- **API Integration:** Successfully integrated the API to fetch workout session data.
- **Line Graph Display:** Each set is presented in a line graph. The graphs are displayed in a list view.
- **Repository Design Pattern:** The app follows the repository design pattern for better data handling and separation of concerns.
- **Error Handling:** Implemented error handling and presentation for network failures or data issues.
- **Loading Effect:** A loading indicator is shown while the data is being fetched asynchronously.

## Tech Stack

- **Alamofire:** Used for network requests and API integration.
- **Charts:** Used for rendering line graphs to visualize workout data.
- **SwiftUI:** The UI is built using SwiftUI's declarative framework.
- **Swift:** Core programming language used for the entire application.
- **Unit Tests:** Implemented unit tests for the `WorkoutListViewModel`.

## Unit Testing

I have implemented unit tests for the view model (`WorkoutListViewModel`). So far, there is one unit test that ensures the view model behaves correctly during the data fetching process.

If I had more time, I would:
- **Improve Unit Test Coverage:** Expand the unit tests to cover more edge cases and behaviors.
- **Implement UI Tests:** Add UI tests to validate the application's interface and user interactions.
- **Improve the UI:**
- **Replaced the magic number :**

## Installation

1. Clone the repository to your local machine:

   - ```git clone https://github.com/KaoWenChung/StanceFitnessTakeHomeTest.git```
   - ```cd StanceFitnessTakeHomeTest```
   - ```open StanceFitnessTakeHomeTest.xcodeproj```

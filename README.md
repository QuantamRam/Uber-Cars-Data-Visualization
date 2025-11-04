# 🚗 Uber Data Visualization Dashboard

A full-stack web application for visualizing and analyzing Uber trip data with interactive maps, charts, and comprehensive statistics. Built with React, Flask, and modern data visualization tools.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Python](https://img.shields.io/badge/python-3.8+-blue.svg)
![Node](https://img.shields.io/badge/node-16+-green.svg)
![React](https://img.shields.io/badge/react-18-blue.svg)
![Flask](https://img.shields.io/badge/flask-3.0-lightgrey.svg)

## ✨ Features

- 🗺️ **Interactive Map Visualization**: View trip locations on an interactive Leaflet map with markers
- 📊 **Real-time Analytics Dashboard**: Comprehensive statistics and visualizations
- 📈 **Multiple Chart Types**: 
  - Hourly trip patterns
  - Day of week analysis
  - Monthly trends
- 🔍 **Advanced Filtering**: Filter trips by base, month, and day
- 🎨 **Modern UI**: Beautiful, responsive dark-themed interface built with Tailwind CSS
- ⚡ **High Performance**: Optimized data processing with pandas and efficient rendering
- 📱 **Responsive Design**: Works seamlessly on desktop and mobile devices

## 🛠️ Tech Stack

### Backend
- **Python 3.8+** - Core language
- **Flask 3.0** - Web framework
- **Pandas** - Data processing and analysis
- **Flask-CORS** - Cross-origin resource sharing

### Frontend
- **React 18** - UI framework
- **Vite** - Build tool and dev server
- **Tailwind CSS** - Utility-first CSS framework
- **Leaflet** - Interactive map library
- **Recharts** - Chart library
- **Axios** - HTTP client
- **Lucide React** - Icon library

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- **Python 3.8 or higher** ([Download Python](https://www.python.org/downloads/))
- **Node.js 16 or higher** ([Download Node.js](https://nodejs.org/))
- **npm** (comes with Node.js) or **yarn**
- **Git** (optional, for cloning the repository)

## 🚀 Installation

### 1. Clone the Repository

```bash
git clone https://github.com/QuantamRam/uber-data-visualization.git
cd uber-data-visualization
```

Or if you prefer SSH:
```bash
git clone git@github.com:QuantamRam/uber-data-visualization.git
cd uber-data-visualization
```

### 2. Backend Setup

#### Option A: Using PowerShell Script (Windows)

```powershell
.\start-backend.ps1
```

#### Option B: Manual Setup

1. Navigate to the backend directory:
```bash
cd backend
```

2. Create a virtual environment:
```bash
# Windows
python -m venv venv
venv\Scripts\activate

# Mac/Linux
python3 -m venv venv
source venv/bin/activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Start the Flask server:
```bash
python app.py
```

The backend will run on `http://localhost:5000`

### 3. Frontend Setup

#### Option A: Using PowerShell Script (Windows)

```powershell
.\start-frontend.ps1
```

#### Option B: Manual Setup

1. Open a new terminal and navigate to the frontend directory:
```bash
cd frontend
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

The frontend will run on `http://localhost:3000`

### 4. Quick Start (Both Servers)

#### Windows (PowerShell)
```powershell
.\start-all.ps1
```

#### Windows (Batch)
```cmd
start-all.bat
```

This will start both servers in separate windows.

## 📖 Usage

1. **Start the servers** using one of the methods above
2. **Open your browser** and navigate to `http://localhost:3000`
3. **Explore the dashboard**:
   - View overall statistics at the top
   - Use filters to explore specific bases, months, or days
   - Interact with the map to see trip locations
   - Analyze patterns in the charts

### Dashboard Features

- **Statistics Cards**: View total trips, active bases, average trips per day, and date range
- **Interactive Map**: Click on markers to see trip details
- **Filter Panel**: Filter data by:
  - Base (specific Uber base)
  - Month (1-12)
  - Day of month (1-31)
- **Charts**: 
  - Bar chart showing trips by hour
  - Bar chart showing trips by weekday
  - Line chart showing monthly trends

## 🔌 API Endpoints

The backend provides the following REST API endpoints:

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/api/health` | GET | Health check endpoint |
| `/api/stats` | GET | Overall statistics |
| `/api/trips` | GET | Get trip data (supports query params: `base`, `month`, `day`, `page`, `per_page`) |
| `/api/trips/hourly` | GET | Trips grouped by hour of day |
| `/api/trips/weekday` | GET | Trips grouped by day of week |
| `/api/trips/monthly` | GET | Trips grouped by month |
| `/api/bases` | GET | List of all bases with trip counts |
| `/api/aggregate` | GET | Aggregate trip data |

### Example API Usage

```bash
# Get all trips
curl http://localhost:5000/api/trips

# Get trips for a specific base
curl http://localhost:5000/api/trips?base=B02512

# Get trips for April
curl http://localhost:5000/api/trips?month=4

# Get statistics
curl http://localhost:5000/api/stats
```

## 📁 Project Structure

```
.
├── backend/
│   ├── app.py              # Flask API server
│   └── requirements.txt    # Python dependencies
├── frontend/
│   ├── src/
│   │   ├── components/     # React components
│   │   │   ├── Charts.jsx
│   │   │   ├── Filters.jsx
│   │   │   ├── Header.jsx
│   │   │   ├── MapView.jsx
│   │   │   └── StatsCards.jsx
│   │   ├── App.jsx         # Main app component
│   │   ├── main.jsx        # Entry point
│   │   └── index.css       # Global styles
│   ├── package.json        # Node dependencies
│   ├── vite.config.js      # Vite configuration
│   └── tailwind.config.js  # Tailwind configuration
├── *.csv                    # Data files (uber-raw-data-*.csv, etc.)
├── start-all.ps1           # PowerShell script to start both servers
├── start-backend.ps1       # PowerShell script to start backend
├── start-frontend.ps1      # PowerShell script to start frontend
├── start-all.bat           # Batch script to start both servers
├── start-backend.bat       # Batch script to start backend
├── start-frontend.bat      # Batch script to start frontend
├── README.md               # This file
└── LICENSE                 # MIT License
```

## 📊 Data

The application processes CSV files from the root directory:

- `uber-raw-data-*.csv` - Individual trip data with coordinates
- `Uber-Jan-Feb-FOIL.csv` - Aggregate statistics
- `other-*.csv` - Additional service data

### Data Format

**Trip Data (uber-raw-data-*.csv):**
- `Date/Time`: Timestamp of the trip
- `Lat`: Latitude coordinate
- `Lon`: Longitude coordinate
- `Base`: Base identifier

## ⚙️ Configuration

### Backend Configuration

The backend can be configured by modifying `backend/app.py`:

- **Port**: Default is `5000` (change in `app.run()`)
- **Host**: Default is `0.0.0.0` (change in `app.run()`)
- **Data Loading**: Data is cached in memory after first load

### Frontend Configuration

The frontend can be configured by modifying `frontend/vite.config.js`:

- **Port**: Default is `3000`
- **Proxy**: API requests are proxied to `http://localhost:5000`

## 🐛 Troubleshooting

### Backend Issues

**Problem**: Backend won't start
- **Solution**: 
  - Ensure Python 3.8+ is installed
  - Check that all dependencies are installed: `pip install -r requirements.txt`
  - Verify CSV files are in the root directory (one level up from backend/)
  - Check for port conflicts (ensure port 5000 is available)

**Problem**: Data not loading
- **Solution**:
  - Verify CSV files exist in the root directory
  - Check backend console for error messages
  - Ensure file paths are correct

### Frontend Issues

**Problem**: Frontend won't start
- **Solution**:
  - Ensure Node.js 16+ is installed
  - Run `npm install` to install dependencies
  - Check that port 3000 is available
  - Clear `node_modules` and reinstall if needed

**Problem**: Map not displaying
- **Solution**:
  - Check browser console for errors
  - Ensure Leaflet CSS is loading
  - Verify backend is running on port 5000
  - Check network tab for API request failures

**Problem**: "Site can't be reached"
- **Solution**:
  - Ensure both servers are running
  - Check backend is on `http://localhost:5000`
  - Check frontend is on `http://localhost:3000`
  - Verify no firewall is blocking the ports
  - Try accessing `http://127.0.0.1:3000` instead

### Performance Issues

- **Large datasets**: The app samples data for performance (up to 10,000 trips per request)
- **Map markers**: Limited to 5,000 markers for optimal performance
- **Data caching**: Data is cached after first load to improve subsequent requests

## 🧪 Development

### Building for Production

**Frontend:**
```bash
cd frontend
npm run build
```

The built files will be in `frontend/dist/`

### Running in Development Mode

Both servers support hot-reloading:
- Backend: Flask debug mode (auto-reload on code changes)
- Frontend: Vite HMR (Hot Module Replacement)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Data provided by Uber
- Map tiles by [OpenStreetMap](https://www.openstreetmap.org/)
- Icons by [Lucide](https://lucide.dev/)
- Chart library by [Recharts](https://recharts.org/)

## 👤 Author

**Ram Chandar Sanaboyina**

- GitHub: [@QuantamRam](https://github.com/QuantamRam)
- Profile: [github.com/QuantamRam](https://github.com/QuantamRam)

## 📧 Contact

For questions or issues, please open an issue on GitHub or contact the author.

---

Made with ❤️ by Ram Chandar Sanaboyina using React, Flask, and modern web technologies.

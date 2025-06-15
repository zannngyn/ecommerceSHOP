import React from 'react';
// import AdminCharts from '../ecommerce/AdminCharts';

// import EcommerceMetrics from '../admin/ecommerce/EcommerceMetrics';
// import MonthlySalesChart from '../admin/ecommerce/MonthlySalesChart';
import StatisticsChart from './ecommerce/StatisticsChart';

const AdminPage = () => {
    return (
        <div>
            <h1>Admin Dashboard</h1>
            {/* <AdminCharts /> */}
            {/* <EcommerceMetrics /> */}
            {/* <MonthlySalesChart /> */}
            <StatisticsChart />
        </div>
    );
};

export default AdminPage;
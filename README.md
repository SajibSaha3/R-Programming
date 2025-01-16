<h2>Overview</h2>
<p>This project demonstrates data manipulation and analysis techniques using R. The script is focused on analyzing a dataset named <strong>StudentSurveyData.xlsx</strong>, which contains information about students such as their demographics, spending habits, and academic details. Each section of the script represents a specific task designed to explore and transform the dataset.</p>

<hr>

<h2>Features</h2>
<h3>Task 1: Data Loading</h3>
<ul>
    <li>Reads the "DATA" sheet of <strong>StudentSurveyData.xlsx</strong> into a data frame <code>df1</code>.</li>
    <li>Ensures all necessary libraries (e.g., <code>readxl</code>) are loaded.</li>
</ul>

<h3>Task 2: Data Exploration</h3>
<ul>
    <li>Inspects the structure of the dataset using <code>str()</code>.</li>
    <li>Retrieves the first and last six rows with <code>head()</code> and <code>tail()</code>.</li>
    <li>Checks for missing values using <code>sum(is.na())</code>.</li>
</ul>

<h3>Task 3: Summary Statistics</h3>
<ul>
    <li>Provides summary statistics of the dataset using <code>summary()</code>.</li>
</ul>

<h3>Task 4: Exploring Unique Categories</h3>
<ul>
    <li>Uses <code>unique()</code> to identify unique categories in the <strong>Major</strong> column.</li>
    <li>Computes the frequency of categories in the <strong>Major</strong> column with <code>table()</code>.</li>
</ul>

<h3>Task 5: Data Transformation</h3>
<ul>
    <li>Replaces the "IS" category in the <strong>Major</strong> column with "Information Systems".</li>
    <li>Verifies the transformation using <code>unique()</code> and <code>table()</code>.</li>
</ul>

<h3>Task 6: Introducing Missing Values</h3>
<ul>
    <li>Simulates missing values in the dataset:</li>
    <ul>
        <li>5% missing in the <strong>Spending</strong> column.</li>
        <li>10% missing in the <strong>Text Messages</strong> column.</li>
    </ul>
    <li>Defines a custom function <code>data_na_count()</code> to count missing values in each column.</li>
</ul>

<h3>Task 7: Data Filtering</h3>
<ul>
    <li>Creates a new data frame <code>df_male</code> containing data for male students only.</li>
    <li>Checks for missing values in the <strong>Spending</strong> column of the filtered data.</li>
</ul>

<h3>Task 8: Identifying Top Students</h3>
<ul>
    <li>Filters and ranks students:</li>
    <ul>
        <li>Unemployed seniors with the highest GPAs.</li>
        <li>Outputs the top 3 students based on GPA.</li>
    </ul>
</ul>

<h3>Task 9: Data Type Conversion</h3>
<ul>
    <li>Converts all character columns to factor columns using <code>mutate_if()</code>.</li>
    <li>Verifies the changes using <code>str()</code> and <code>summary()</code>.</li>
</ul>

<h3>Task 10: Exporting Data</h3>
<ul>
    <li>Filters students who use laptops for study.</li>
    <li>Exports the filtered dataset to an Excel file using the <code>writexl</code> package.</li>
</ul>

<hr>

<h2>Prerequisites</h2>
<p>Ensure the following R packages are installed:</p>
<ul>
    <li><code>readxl</code>: For reading Excel files.</li>
    <li><code>dplyr</code>: For data manipulation.</li>
    <li><code>writexl</code>: For exporting data to Excel.</li>
</ul>
<p>Install these packages using:</p>
<pre><code>install.packages("readxl")


<hr>

<h2>How to Run</h2>
<ol>
    <li>Place the <strong>StudentSurveyData.xlsx</strong> file in the <code>Data</code> folder.</li>
    <li>Ensure the R script and necessary libraries are set up correctly.</li>
    <li>Run the script to execute tasks sequentially.</li>
    <li>Check the <code>Output</code> folder for exported results.</li>
</ol>

<hr>

<h2>Author</h2>
<p><strong>Name</strong>: Sajib Saha</p>
<p><strong>Email</strong>: sajibsaha332255@gmail.com</p>

<hr>

<h2>Acknowledgments</h2>
<p>Thanks to the contributors of the required R packages for their tools and resources. This script is part of an assignment submission.</p>


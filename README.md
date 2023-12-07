<div align="center">
  <img height="150" src="https://camo.githubusercontent.com/62da68eb62b1e5f175f7d1f0191dd89a653d7908feb22d37d4a0ab07365d6791/68747470733a2f2f6d656469612e67697068792e636f6d2f6d656469612f4d3967624264396e6244724f5475314d71782f67697068792e676966"  />
</div>

###

<div align="center">
  <a href="https://www.linkedin.com/in/letuthieny/" target="_blank">
    <img src="https://img.shields.io/static/v1?message=LinkedIn&logo=linkedin&label=&color=0077B5&logoColor=white&labelColor=&style=for-the-badge" height="25" alt="linkedin logo"  />
  </a>
</div>

###

<h1 align="center">UK HOUSING PRICE</h1>

###

<h2 align="left">Language and tools 🛠</h2>

###

<div align="left">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" height="40" alt="python logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kaggle/kaggle-original.svg" height="40" alt="kaggle logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/microsoftsqlserver/microsoftsqlserver-plain.svg" height="40" alt="microsoftsqlserver logo"  />
</div>

###

<h2 align="left">Introduction</h2>

###

<p align="left">Welcome to the UK Housing Price Insights project! In this analysis, we delve into the dynamic landscape of housing prices across the UK. This exploration aims to uncover crucial information about the most and least expensive areas, track changes in prices over time, and provide a comprehensive understanding of the factors shaping the real estate market. <br>Whether you're interested in regional variations, historical trends, or other aspects of UK housing prices, this project is your go-to resource. Feel free to explore the data, analyse trends, and gain valuable insights into the UK real estate market. Your questions and contributions are welcome!</p>

###

<h2 align="left">Download Dataset</h2>

###

<h5 align="left">1.	Link to download the main dataset UK Housing Prices 1995- 2023 (4GB)</h5>

###

<p align="left">https://www.kaggle.com/datasets/lorentzyeung/price-paid-data-202304/data (Kaggle)<br>In this project, I only focus within the timeframe of 2019 to 202, so I run this Python Script on the 4GB csv file to download the dataset from 2019 – 2023. However, to easily upload the csv file to MS SQL, I also need to reduce the size so I divide the file into 3 csv files. Original dataset has 16 columns, drop out 4 columns to become 12 columns, reduce one csv 4 GB to 3 csv files as MSSQL not allow to upload file over 300 KB. <br><br>⚠️ Note: you can use another environment to normalize the data like Google Colab, etc, but for convenience, Kaggle will allow bigdata file uploads without setup time.<br>https://github.com/letuthieny/UK-House-Price/tree/main/Kaggle%20-%20Python%20file <br><br>Or you can skip this Python step and download directly 3 CSV files from <br>Link: https://github.com/letuthieny/UK-House-Price/tree/main/CSV%20Files</p>

###

<h5 align="left">Address data explanation</h5>

###

<p align="left">Postcode: The postal code where the property is located.<br>Street: The street name where the property is located.<br>Locality: Additional locality information.<br>Town/City: The town or city where the property is located.<br>District: The district in which the property resides.<br>County: The county where the property is located.<br>Price: The price for which the property was sold.</p>

###

<h5 align="left">2.	Link to download all other additional datasets</h5>

###

<p align="left">https://github.com/letuthieny/UK-House-Price/blob/main/CSV%20Files/CSV.zip</p>

###

<h2 align="left">Upload the CSV files to MSSQL</h2>

###

![1](https://github.com/letuthieny/UK-House-Price/assets/48614949/0973c35e-9bac-4820-9916-3d213b88e567)

###

<h2 align="left">Clean and prepare data</h2>

###

<p align="left">-	As we separate the dataset into 3 CSV files in order to upload to MSSQL, so now I will combine 3 tables into 1 table.<br><br>-	Reduce the duplicates<br><br>Link: https://github.com/letuthieny/UK-House-Price/tree/main/SQL%20Queries/Clean%20and%20prepare%20data</p>

###

<h2 align="left">Insight Queries</h2>

###

<p align="left">1. Percentage Change in Housing Prices (All Counties) - 2020 to 2022<br>   To comprehend the overall trends in housing prices from 2020 to 2022, this query calculates the percentage change in average prices for each county. The result provides insights into how housing markets across different counties in the UK have evolved during this specific time frame.<br><br>2. Percentage Change in Housing Prices (London) - 2020 to 2022<br>   Focusing specifically on London, this query calculates the percentage change in average housing prices from 2020 to 2022. By isolating London, we gain a detailed understanding of how the real estate market in the capital has fluctuated over this two-year period.<br><br>3. Summary of Dataset<br>   This summary provides a quick overview of the dataset's characteristics.<br><br>4. Top 10 Counties with the Highest Housing Average Price<br>   By identifying and ranking the counties based on their average housing prices, this query extracts the top 10 counties with the highest housing prices. This information highlights areas where the real estate market commands the highest average prices during the specified period.<br><br>5. Top 10 Streets with the Most Expensive Houses in the UK<br>   Focusing at a more granular level, this query identifies the top 10 streets in the UK with the most expensive houses. By pinpointing specific streets, it offers valuable insights into localized areas that exhibit premium housing prices.</p>

###

Link: https://github.com/letuthieny/UK-House-Price/tree/main/SQL%20Queries/Insight%20Queries
  
###

<h2 align="left">Upload large files to Github</h2>

###

+ <h5 align="left">Step 1: Download GIT</h5>

###

<p align="left">https://gitforwindows.org/</p>

###

+ <h5 align="left">Step 2: Download Git Large File Storage (LFS)</h5>

###

<p align="left">It replaces large files such as audio samples, videos, datasets, … with text pointers inside Git, while storing the file contents on a remote server like GitHub.com or GitHub Enterprise.</p>

###

<p align="left">https://git-lfs.com/</p>

###

+ <h5 align="left">Step 3: Initialize Git LFS in Your Repository </h5>

###

<p align="left">Input</p>

###

```bash
git lfs install
```

###
+ <h5 align="left">Step 4: Initialize a new Git repository</h5>

###
<p Initialize a new Git repository or reinitialize an existing one.
When you run git init in a directory, it sets up the necessary files and data structures for Git version control in that directory.
It creates a new subdirectory named .git that contains all the metadata and configuration for the repository.</p>
  
###
<p align="left">Input</p>

###

```bash 
git init
```

###

<p align="left">Output</p>

###

<p align="left"> Initialized empty Git repository in …!</p>

###
![image](https://github.com/letuthieny/UK-House-Price/assets/48614949/f6746bc0-a103-46a4-818c-3bb15dd17b5b)

###
+ <h5 align="left">Step 5: Initialize Git LFS</h5>

###

<p align="left">Open Git Bash</p>

###

<p align="left">Input</p>

###

```bash  
git lfs install
```
###

<p align="left">Output</p>

###
![image](https://github.com/letuthieny/UK-House-Price/assets/48614949/03d8cbda-7b1a-4c60-8d90-a75140148ca9)

###

<p align="left"> ⚠️ Note: If the folder has large size files such as CSV (more than 1GB), etc you need to zip the whole folder into 1 Zip folder, if not you can’t upload it to Github and will get the narrow folder after uploading.</p>

###
![image](https://github.com/letuthieny/UK-House-Price/assets/48614949/d28b57e5-150f-4aa2-86d9-26e51a251e9d)

###

+ <h5 align="left">Step 6</h5>

###

<p align="left">From Git Bash app, you navigate the the direction to where your files are:</p>

###


```bash 
cd C:/Users/letut/UK-House-Price/
```
###

<p align="left">Note: remember only use forward flash (/) in Git Bash</p>

###

<p align="left">Output</p>

###
![image](https://github.com/letuthieny/UK-House-Price/assets/48614949/1c893143-eb43-4508-a877-689e748f6c58)


###

+ <h5 align="left">Step 7</h5>

###

<p align="left">Input</p>

###
```bash 
  git add .
  git add .gitattributes
  git commit -m "This is description, so can write any comment you like"
  git push origin main
```
###

<p align="left">Output</p>

###

```bash 
  Uploading LFS objects: 100% (1/1), 209 MB | 1.3 MB/s, done. 
  Enumerating objects: 10, done. <br> Counting objects: 100% (10/10), done.
  Delta compression using up to 4 threads<br>Compressing objects: 100% (6/6), done.
  Writing objects: 100% (6/6), 1.08 KiB | 1.08 MiB/s, done.
  Total 6 (delta 2), reused 0 (delta 0), pack-reused 0
  remote: Resolving deltas: 100% (2/2), completed with 1 local object.
```

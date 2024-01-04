{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": []
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "FQH4wScB48Xz"
      },
      "outputs": [],
      "source": [
        "#question 1\n",
        "#I need total Population in zipcode 94085\n",
        "\n",
        "Select count(Population) As total_count from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is Not NULL and zipcode = '94085';\n",
        "\n",
        "#question 2\n",
        "\n",
        "#I need number of Male and Female head count in zipcode 94085\n",
        "\n",
        "select zipcode, count(case when gender='male' then gender end) as maleheadcount, count(case when gender='female' then gender end) as femaleheadcount  from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is not NULL and zipcode = '94085' group by zipcode;\n",
        "\n",
        "#Question 4\n",
        "##I want age group for male gender which has max male population zipcode 94085\n",
        "\n",
        "select population, minimum_age,maximum_age,gender from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is not NULL and gender ='male'and  zipcode = '94085' order by population desc limit 1;\n",
        "\n",
        "##Question5\n",
        "## I want age group for female gender which has max male population zipcode 94085\n",
        "\n",
        "select population,minimum_age,maximum_age, gender from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is not NULL and gender ='female'and  zipcode = '94085' order by population desc limit 1;\n",
        "\n",
        "\n",
        "#question6\n",
        "##I want zipcode which has highest male and female population in USA\n",
        "\n",
        "select zipcode from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is not NULL group by zipcode order by sum(population) desc limit 1;\n",
        "\n",
        "##select zipcode, max(population) as highest_population from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is not NULL group by zipcode,population order by population desc limit 1;\n",
        "\n",
        "##question7\n",
        "##I want first five age groups which has highest male and female population in USA\n",
        "\n",
        "select minimum_age, maximum_age,gender, count(*) as total_pop from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is not NULL group by minimum_age,maximum_age,gender order by total_pop desc limit 5;\n",
        "\n",
        "#question8\n",
        "##I want first five zipcodes which has highest female population in entire USA\n",
        "\n",
        "select zipcode, population from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is not NULL and gender = 'female' group by zipcode,population order by max(population) desc limit 5;\n",
        "\n",
        "##Question9\n",
        "##I want first 10 which has lowest male population in entire USA\n",
        "\n",
        "select zipcode, population from bigquery-public-data.census_bureau_usa.population_by_zip_2010 where minimum_age is not NULL and maximum_age is not NULL and gender = 'male' and population <> 0 group by zipcode,population order by min(population) limit 10;\n",
        "\n",
        "\n"
      ]
    },
    {
      "cell_type": "markdown",
      "source": [],
      "metadata": {
        "id": "zU8J9ko55xEy"
      }
    },
    {
      "cell_type": "code",
      "source": [],
      "metadata": {
        "id": "_Ro-5bPb5ytn"
      },
      "execution_count": null,
      "outputs": []
    },
    {
      "cell_type": "markdown",
      "source": [],
      "metadata": {
        "id": "QszUuxFj50g_"
      }
    }
  ]
}

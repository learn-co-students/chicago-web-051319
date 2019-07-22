import React from 'react'

import Filters from './Filters'
import PetBrowser from './PetBrowser'

class App extends React.Component {
  constructor() {
    super()

    this.state = {
      pets: [],
      filters: {
        type: 'all'
      }
    }
    // this.fetchPets()
  }

  adoptPet = (petId) => {
    const updatedPets = this.state.pets.map((pet) => {
      if (pet.id === petId) {
        pet.isAdopted = true
        return pet
      } else {
        return pet
      }
    })
    this.setState({ pets: updatedPets })
  }

  fetchPets = () => {
    const baseUrl = `/api/pets`
    const filterType = this.state.filters.type

    const apiEndpoint = filterType === 'all' ? baseUrl : `${baseUrl}?type=${filterType}`

    fetch(apiEndpoint)
      .then((response) => {
        return response.json()
      })
      .then((myPets) => {
        this.setState({ pets: myPets })
      })
  }

  setFilterType = ({ target: { value } } ) => {
    const filterSetting =  { type: value }
    this.setState({ filters: filterSetting })
  }

  render() {
    return (
      <div className="ui container">
        <header>
          <h1 className="ui dividing header">React Animal Shelter</h1>
        </header>
        <div className="ui container">
          <div className="ui grid">
            <div className="four wide column">
              <Filters onFindPetsClick={ this.fetchPets } onChangeType={this.setFilterType} />
            </div>
            <div className="twelve wide column">
              <PetBrowser pets={ this.state.pets } onClickAdopt={this.adoptPet} />
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default App

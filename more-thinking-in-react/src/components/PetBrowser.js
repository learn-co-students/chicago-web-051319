import React from 'react'

import Pet from './Pet'

class PetBrowser extends React.Component {
  render() {
    const pets = this.props.pets
    const petCards = pets.map((pet) => {
      return <Pet pet={pet} key={pet.id} onClickAdopt={this.props.onClickAdopt}/>
    })

    return <div className="ui cards">{petCards}</div>
  }
}

export default PetBrowser

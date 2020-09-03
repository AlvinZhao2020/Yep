export const chinesefood = (state) =>
  Object.values(state.entities.businesses).filter(
    (business) => business.category === "Chinese Food"
  );

export const sushi= (state) =>
  Object.values(state.entities.businesses).filter(
    (business) => business.category === "Sushi"
  );

export const BBQ = (state) =>
  Object.values(state.entities.businesses).filter(
    (business) => business.category === "BBQ"
  );

export const Bar = (state) =>
    Object.values(state.entities.businesses).filter(
      (business) => business.category === "Bar"
    );

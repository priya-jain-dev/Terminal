// Example function calls
function getUserById(id) {
  return users.find((user) => user.id === id);
}

function updateUserById(id, data) {
  const index = users.findIndex((user) => user.id === id);
  if (index !== -1) {
    users[index] = { ...users[index], ...data };
    return true;
  }
  return false;
}

function deleteUserById(id) {
  const index = users.findIndex((user) => user.id === id);
  if (index !== -1) {
    users.splice(index, 1);
    return true;
  }
  return false;
}

function createNewUser(data) {
  const newUser = { id: generateId(), ...data };
  users.push(newUser);
  return newUser;
}

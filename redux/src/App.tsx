import React, {
  FunctionComponent, useState
} from 'react';

export const App: FunctionComponent = () => {
  const [state, setState] = useState('World!');
  const s = 'Hello ' + state;
  return (
    <>
      <p children={s} />
      <button
        children={'Change State'}
        onClick={ () => setState('React!') }
      />
    </>
  );
}
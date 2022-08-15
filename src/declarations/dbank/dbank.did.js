export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'checkBlance' : IDL.Func([], [IDL.Float64], ['query']),
    'compound' : IDL.Func([], [], ['oneway']),
    'topUp' : IDL.Func([IDL.Float64], [], ['oneway']),
    'widthdraw' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };

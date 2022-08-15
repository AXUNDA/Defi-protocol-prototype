import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkBlance' : () => Promise<number>,
  'compound' : () => Promise<undefined>,
  'topUp' : (arg_0: number) => Promise<undefined>,
  'widthdraw' : (arg_0: number) => Promise<undefined>,
}

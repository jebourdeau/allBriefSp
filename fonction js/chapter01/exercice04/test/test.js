import { assert } from 'chai';

import { addWithCallback , filterArrayWithCallback, asyncAdd, filterArrayAsync } from '..';

describe('Chapter 1 -> Course 4', _ => {
  describe('Arrow Functions and Callbacks', _ => {
    [...Array(5).keys()].map(_ => {
      const inputs = Array(2).map(_ => Math.floor(Math.random() * 100))
      const output = inputs.reduce((acc, value) => acc + value, 0);
      it(`should return the sum of each elements ${inputs}, it must be equal to ${output}`, done => {
        addWithCallback(inputs[0], inputs[1], (value) => {
          assert.equal(value, output)
          done()
        })
      })
    })
  });

  describe('Filter an Array with callback', _ => {
    [...Array(5).keys()].map(_ => {
      const inputs = Array(Math.floor(Math.random() * 10)).map(_ => Math.floor(Math.random() * 100))
      const output = inputs.reduce((acc, value) => acc == null || value > acc ? value : acc, null)
      it(`should return the a filtered array of ${inputs}, it should be ${output}`, done => {
        filterArrayWithCallback(inputs, (value) => {
          assert.equal(value, output)
          done()
        })
      })
    })
  })

  describe('Add numbers with Promise', _ => {
    [...Array(5).keys()].map(_ => {
      const inputs = Array(2).map(_ => Math.floor(Math.random() * 100))
      const output = inputs.reduce((acc, value)=>acc+value, 0)
      it(`should return the sum of two numbers ${inputs}, it must be equal to ${output}`, async done => {
        const value = await asyncAdd(inputs[0], inputs[1])
        assert.equal(value, output)
        done()
      })
    })
  })

  describe('Filter an Array with Promise', _ => {
    [...Array(5).keys()].map(_ => {
      const inputs = Array(Math.floor(Math.random() * 10)).map(_ => Math.floor(Math.random() * 100))
      const output = inputs.reduce((acc, value) => acc == null || value > acc ? value : acc, null)
      it(`should return the a filtered array of ${inputs}, it should be ${output}`, async done => {
        const value = await filterArrayWithCallback(inputs)
        assert.equal(value, output)
        done()
      })
    })
  })
})

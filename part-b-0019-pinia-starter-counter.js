import { defineStore } from "pinia";

export const useCounterStore = defineStore("counter",
    {
        state: () => ({
            counter: 34,

            counterData: {
                version: "01-01",
                createdBy: "Mustafa"
            }
    
        })
    }
)

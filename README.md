# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The Modulo Counter divides clocks by 2 * Count because it toggles its output only after reaching the preset count value and then resets. Each time the counter reaches its maximum value, it triggers a single transition of the output. However, a full clock cycle of the output requires both a rising and a falling edge. Therefore, the counter must go through the full counting sequence twice to produce one complete output cycle, doubling the count value in the division. This is why the output frequency is the input clock divided by 2 * Count, rather than just the Count itself.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
In a ring counter, the output can go to all 1s on the first clock cycle if the flip-flops are initialized in a state where all Q outputs are 1. Unlike a standard ring counter that ideally starts with a single “1” circulating, real hardware or simulation may set all flip-flops high. When the clock ticks the first time, all flip-flops receive the same input pattern simultaneously, so the output remains all 1s, creating an invalid state for a proper ring counter. Proper initialization with a single “1” is necessary to ensure the ring counter cycles through the intended one-hot sequence rather than producing an all-ones state.


### 3 - What width of ring counter would you use to get to an output of ~1KHz?
To achieve an output of approximately 1 kHz with a ring counter, the width of the counter must be equal to the input clock frequency divided by 1 kHz. This is because a ring counter produces one output pulse per clock cycle for each stage, so the number of stages directly determines how much the input clock is divided. In practice, since very high-frequency clocks would require an impractically wide ring counter, the input clock is usually first reduced with a prescaler or modulo counter before feeding it into a ring counter of manageable width.




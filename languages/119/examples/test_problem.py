import tensorflow as tf
import numpy as np


x_vals = list(map(lambda v: float(v.strip()), input().split(',')))
y_vals = list(map(lambda v: float(v.strip()), input().split(',')))

# Create a simple linear function y = 3x + 2
x = np.array(x_vals, dtype=float)
y = np.array(y_vals, dtype=float)  # Create a simple model
model = tf.keras.Sequential([tf.keras.layers.Dense(units=1, input_shape=[1])])  # Compile the model
model.compile(optimizer='sgd', loss='mean_squared_error')  # Train the model
model.fit(x, y, epochs=500)  # Use the model to make a prediction

print(model.predict([10.0]))

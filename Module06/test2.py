import torch

USE_CUDA = torch.cuda.is_available()

print(USE_CUDA)

device = torch.device("cuda" if USE_CUDA else "cpu")

print(device)

import 'dart:collection';

class HuffmanNode implements Comparable<HuffmanNode> {
  String character;
  int frequency;
  HuffmanNode? left;
  HuffmanNode? right;

  HuffmanNode(this.character, this.frequency);

  @override
  int compareTo(HuffmanNode other) {
    return frequency - other.frequency;
  }
}

HuffmanNode buildHuffmanTree(String input) {
  Map<String, int> charFrequency = {};
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    charFrequency[char] = (charFrequency[char] ?? 0) + 1;
  }

  PriorityQueue<HuffmanNode> priorityQueue = PriorityQueue();
  charFrequency.forEach((char, freq) {
    priorityQueue.add(HuffmanNode(char, freq));
  });

  while (priorityQueue.length > 1) {
    HuffmanNode left = priorityQueue.removeFirst();
    HuffmanNode right = priorityQueue.removeFirst();
    HuffmanNode parent = HuffmanNode('', left.frequency + right.frequency);
    parent.left = left;
    parent.right = right;
    priorityQueue.add(parent);
  }

  return priorityQueue.first;
}

void printHuffmanCodes(HuffmanNode node, String code) {
  if (node.left == null && node.right == null) {
    print("${node.character}: $code");
    return;
  }

  printHuffmanCodes(node.left!, code + '0');
  printHuffmanCodes(node.right!, code + '1');
}

void main() {
  String input = "ABRACADABRA";
  HuffmanNode root = buildHuffmanTree(input);

  print("Codificação de Huffman:");
  printHuffmanCodes(root, "");
}

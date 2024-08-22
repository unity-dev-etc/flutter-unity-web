using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChangeColor : MonoBehaviour
{
    public Button changeColorButton; // Reference to the button

    public Renderer cubeRenderer;

    void Start()
    {
        // Add a listener to the button to call ChangeColor when clicked
        changeColorButton.onClick.AddListener(ChangeCubeColor);
    }

    void ChangeCubeColor()
    {
        // Generate a random color
        Color randomColor = new Color(Random.value, Random.value, Random.value);

        // Apply the color to the cube's material
        cubeRenderer.material.color = randomColor;
    }
}

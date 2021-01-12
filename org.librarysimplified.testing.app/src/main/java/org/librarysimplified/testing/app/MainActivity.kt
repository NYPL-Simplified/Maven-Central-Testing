package org.librarysimplified.testing.app

import android.app.Activity
import android.os.Bundle
import android.widget.ImageView
import android.widget.TextView

class MainActivity : Activity() {

  private lateinit var text: TextView
  private lateinit var image: ImageView

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    this.setContentView(R.layout.main_layout)
    this.image = this.findViewById(R.id.swimming)
    this.text = this.findViewById(R.id.builtOn)
  }

  override fun onStart() {
    super.onStart()
    this.text.text = "Built on: ${BuildConfig.BUILD_DATE}"
  }
}

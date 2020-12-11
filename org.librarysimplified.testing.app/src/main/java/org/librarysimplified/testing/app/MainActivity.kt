package org.librarysimplified.testing.app

import android.app.Activity
import android.os.Bundle
import android.widget.ImageView

class MainActivity : Activity() {

  private lateinit var image: ImageView

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    this.setContentView(R.layout.main_layout)
    this.image = this.findViewById(R.id.swimming)
  }
}

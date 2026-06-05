package com.ai.invitation;

import android.content.Context;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.widget.Toast;
import androidx.webkit.JavaScriptInterface;

public class WebAppInterface {
    Context mContext;

    WebAppInterface(Context c) {
        mContext = c;
    }

    @JavaScriptInterface
    public void copyToClipboard(String text) {
        ClipboardManager clipboard = (ClipboardManager) mContext.getSystemService(Context.CLIPBOARD_SERVICE);
        ClipData clip = ClipData.newPlainText("文案", text);
        clipboard.setPrimaryClip(clip);
        Toast.makeText(mContext, "已复制到剪贴板", Toast.LENGTH_SHORT).show();
    }
}

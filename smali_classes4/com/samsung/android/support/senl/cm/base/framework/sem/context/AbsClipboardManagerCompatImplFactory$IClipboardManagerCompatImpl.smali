.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$IClipboardManagerCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IClipboardManagerCompatImpl"
.end annotation


# virtual methods
.method public abstract canShowClipboard(Landroid/content/Context;Landroid/view/View;)Z
.end method

.method public abstract canShowClipboardOnSIP(Landroid/content/Context;Landroid/view/View;)Z
.end method

.method public abstract dismissDialog(Landroid/content/Context;)V
.end method

.method public abstract filterClip(Landroid/content/Context;ILjava/lang/Object;)V
.end method

.method public abstract finishBind(Landroid/content/Context;)V
.end method

.method public abstract getClipData(Ljava/lang/Object;)Landroid/content/ClipData;
.end method

.method public abstract getClips(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataListSize(Landroid/content/Context;)I
.end method

.method public abstract getPasteListener(Landroid/content/Context;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
.end method

.method public abstract getPrimaryClip(Landroid/content/Context;I)Landroid/content/ClipData;
.end method

.method public abstract getTypeAll()I
.end method

.method public abstract getTypeHtml()I
.end method

.method public abstract getTypeNone()I
.end method

.method public abstract getTypeText()I
.end method

.method public abstract hasPrimaryClip(Landroid/content/Context;I)Z
.end method

.method public abstract hasSaveServicePermission(Landroid/content/Context;)Z
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isClipboardAllowed(Landroid/content/Context;)Z
.end method

.method public abstract isClipboardManagerEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isShowing(Landroid/content/Context;)Z
.end method

.method public abstract setClip(Landroid/content/Context;Landroid/content/ClipData$Item;[Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract showDialog(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)V
.end method

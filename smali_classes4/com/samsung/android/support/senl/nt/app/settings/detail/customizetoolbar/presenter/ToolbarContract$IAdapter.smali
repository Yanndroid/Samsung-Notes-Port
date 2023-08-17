.class public interface abstract Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract$IAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAdapter"
.end annotation


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getContentDescriptions()[Ljava/lang/String;
.end method

.method public abstract getDrawableIconId(IZ)I
.end method

.method public abstract getSelectedItem()I
.end method

.method public abstract setSelectedItem(I)V
.end method

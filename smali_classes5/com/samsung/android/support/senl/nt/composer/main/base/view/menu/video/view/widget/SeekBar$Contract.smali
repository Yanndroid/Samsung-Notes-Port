.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$Contract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Contract"
.end annotation


# virtual methods
.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onSeekBarHandleStateChanged(Z)V
.end method

.method public abstract onSeekBarProgressed(F)V
.end method

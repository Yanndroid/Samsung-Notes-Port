.class public interface abstract Lcom/samsung/android/sdk/ocr/service/IOCRService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ocr/service/IOCRService$Stub;,
        Lcom/samsung/android/sdk/ocr/service/IOCRService$Default;
    }
.end annotation


# virtual methods
.method public abstract cancel(Landroid/os/Bundle;)V
.end method

.method public abstract close(Landroid/os/Bundle;)V
.end method

.method public abstract detect(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract detectBlock(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract detectText(Landroid/os/Bundle;)Z
.end method

.method public abstract hasText(Landroid/os/Bundle;)Z
.end method

.method public abstract initialize(Landroid/os/Bundle;)Z
.end method

.method public abstract isHandwritten(Landroid/os/Bundle;)Z
.end method

.method public abstract isPrinted(Landroid/os/Bundle;)Z
.end method

.method public abstract isSupported(Landroid/os/Bundle;)Z
.end method

.method public abstract recognize(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.class public interface abstract Lcom/samsung/android/sdk/mobileservice/common/ICommonService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/common/ICommonService$Stub;,
        Lcom/samsung/android/sdk/mobileservice/common/ICommonService$Default;
    }
.end annotation


# virtual methods
.method public abstract doMigration()Z
.end method

.method public abstract exchangeConfiguration(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

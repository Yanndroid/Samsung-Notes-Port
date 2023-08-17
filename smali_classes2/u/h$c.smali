.class public Lu/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/share/ShareController$ShareStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/h;->h(Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
    .locals 1

    const-string p1, "SesShareApi"

    const-string v0, "onComplete()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
    .locals 1

    const-string p1, "SesShareApi"

    const-string v0, "onPause()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;)V
    .locals 1

    const-string p1, "SesShareApi"

    const-string v0, "onResume()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

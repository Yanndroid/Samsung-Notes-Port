.class Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# instance fields
.field public eventTime:J

.field public eventTimeNano:J

.field public id:I

.field public orientation:F

.field public pressure:F

.field public rawX:F

.field public rawY:F

.field public tilt:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenMotionEvent"

.field public static checkNanoAPI:Z = true

.field public static getEventTimeNanosMethod:Ljava/lang/reflect/Method;

.field public static getHistoryEventTimeNanosMethod:Ljava/lang/reflect/Method;


# instance fields
.field public final action:I

.field public final buttonState:I

.field public final downTime:J

.field public final eventInfo:[Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

.field public final eventTime:J

.field public final eventTimeNano:J

.field public final flags:I

.field public final historicalEventInfo:[Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

.field public final historySize:I

.field public final msToNano:J

.field public final pointerCount:I

.field public final source:I

.field public final toolType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->msToNano:J

    sget-boolean v2, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->checkNanoAPI:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    sput-boolean v4, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->checkNanoAPI:Z

    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v5, "semGetEventTimeNano"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->getEventTimeNanosMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-class v2, Landroid/view/MotionEvent;

    const-string v5, "semGetHistoricalEventTimeNano"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->getHistoryEventTimeNanosMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NanoSecond event time API check, main: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->getEventTimeNanosMethod:Ljava/lang/reflect/Method;

    const-string v6, "not found"

    const-string v7, "found"

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", history: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->getHistoryEventTimeNanosMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SpenMotionEvent"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->action:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->toolType:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->downTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->eventTime:J

    mul-long/2addr v5, v0

    sget-object v2, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->getEventTimeNanosMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    :try_start_2
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_3
    iput-wide v5, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->eventTimeNano:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->pointerCount:I

    new-array v2, v2, [Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->eventInfo:[Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

    move v2, v4

    :goto_2
    iget v5, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->pointerCount:I

    const/16 v6, 0x8

    const/16 v7, 0x19

    if-ge v2, v5, :cond_5

    new-instance v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->x:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->y:F

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->rawX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v8

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->rawX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    :goto_3
    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->rawY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->pressure:F

    invoke-virtual {p1, v7, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v7

    iput v7, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->tilt:F

    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v6

    iput v6, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->orientation:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->id:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->eventInfo:[Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

    aput-object v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->historySize:I

    new-array v2, v2, [Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->historicalEventInfo:[Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

    move v2, v4

    :goto_4
    iget v5, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->historySize:I

    if-ge v2, v5, :cond_7

    new-instance v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->eventTime:J

    mul-long/2addr v8, v0

    iput-wide v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->eventTimeNano:J

    sget-object v8, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->getHistoryEventTimeNanosMethod:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_6

    :try_start_3
    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->eventTimeNano:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->x:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->y:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->pressure:F

    invoke-virtual {p1, v7, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->tilt:F

    invoke-virtual {p1, v6, v2}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v8

    iput v8, v5, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;->orientation:F

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->historicalEventInfo:[Lcom/samsung/android/sdk/pen/view/SpenMotionEvent$EventInfo;

    aput-object v5, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->source:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->buttonState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/SpenMotionEvent;->flags:I

    return-void
.end method

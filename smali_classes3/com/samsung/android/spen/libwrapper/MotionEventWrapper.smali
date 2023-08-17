.class public Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_PEN_CANCEL:I

.field public static final ACTION_PEN_DOWN:I

.field public static final ACTION_PEN_MOVE:I

.field public static final ACTION_PEN_UP:I

.field public static final FLAG_EVENT_BY_TWO_FINGER_GESTURE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    const/high16 v1, 0x10000000

    const/16 v2, 0xd6

    const/16 v3, 0xd4

    const/16 v4, 0xd5

    const/16 v5, 0xd3

    sput v5, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    sput v4, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_MOVE:I

    sput v3, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_UP:I

    sput v2, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_CANCEL:I

    sput v1, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->FLAG_EVENT_BY_TWO_FINGER_GESTURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

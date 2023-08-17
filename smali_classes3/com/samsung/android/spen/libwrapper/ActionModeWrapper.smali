.class public Lcom/samsung/android/spen/libwrapper/ActionModeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_HIDE_DURATION:I

.field public static final SEM_TYPE_FLOATING:I

.field public static final TYPE_FLOATING:I

.field public static final TYPE_PRIMARY:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x63

    const/4 v4, -0x1

    sput v4, Lcom/samsung/android/spen/libwrapper/ActionModeWrapper;->DEFAULT_HIDE_DURATION:I

    sput v3, Lcom/samsung/android/spen/libwrapper/ActionModeWrapper;->SEM_TYPE_FLOATING:I

    sput v2, Lcom/samsung/android/spen/libwrapper/ActionModeWrapper;->TYPE_FLOATING:I

    sput v1, Lcom/samsung/android/spen/libwrapper/ActionModeWrapper;->TYPE_PRIMARY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

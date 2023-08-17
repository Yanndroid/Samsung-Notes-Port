.class synthetic Lorg/apache/poi/sun/java2d/StateTrackableDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/java2d/StateTrackableDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$sun$java2d$StateTrackable$State:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/sun/java2d/StateTrackable$State;->values()[Lorg/apache/poi/sun/java2d/StateTrackable$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate$2;->$SwitchMap$sun$java2d$StateTrackable$State:[I

    :try_start_0
    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->UNTRACKABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate$2;->$SwitchMap$sun$java2d$StateTrackable$State:[I

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate$2;->$SwitchMap$sun$java2d$StateTrackable$State:[I

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->DYNAMIC:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/apache/poi/sun/java2d/StateTrackableDelegate$2;->$SwitchMap$sun$java2d$StateTrackable$State:[I

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->IMMUTABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

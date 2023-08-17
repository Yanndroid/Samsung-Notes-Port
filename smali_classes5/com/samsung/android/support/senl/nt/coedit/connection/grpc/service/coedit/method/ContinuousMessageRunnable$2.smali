.class synthetic Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$coeditCoreMessage$ServerCmd:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, LcoeditCoreMessage/ServerCmd;->values()[LcoeditCoreMessage/ServerCmd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$2;->$SwitchMap$coeditCoreMessage$ServerCmd:[I

    :try_start_0
    sget-object v1, LcoeditCoreMessage/ServerCmd;->RESPONSE:LcoeditCoreMessage/ServerCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$2;->$SwitchMap$coeditCoreMessage$ServerCmd:[I

    sget-object v1, LcoeditCoreMessage/ServerCmd;->NOTIFY:LcoeditCoreMessage/ServerCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$2;->$SwitchMap$coeditCoreMessage$ServerCmd:[I

    sget-object v1, LcoeditCoreMessage/ServerCmd;->RESPOND_DEVICE_LIST:LcoeditCoreMessage/ServerCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$2;->$SwitchMap$coeditCoreMessage$ServerCmd:[I

    sget-object v1, LcoeditCoreMessage/ServerCmd;->DISCONNECT_BY_EVENT:LcoeditCoreMessage/ServerCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/method/ContinuousMessageRunnable$2;->$SwitchMap$coeditCoreMessage$ServerCmd:[I

    sget-object v1, LcoeditCoreMessage/ServerCmd;->WORKSPACE_BLOCK_STATE_CHANGE:LcoeditCoreMessage/ServerCmd;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

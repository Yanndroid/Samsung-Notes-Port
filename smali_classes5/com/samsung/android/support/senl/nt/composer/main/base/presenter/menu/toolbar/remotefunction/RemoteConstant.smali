.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant$Type;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant$RemoteExecutor;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant$RemoteFunctionName;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant$RemoteReceiverFunctionName;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant$RemoteSenderType;
    }
.end annotation


# static fields
.field public static final DIVIDE:Ljava/lang/String; = ":"

.field public static final IDX_VERSION_MAJOR:I = 0x1

.field public static final IDX_VERSION_MINOR:I = 0x2

.field public static final KEY_ACTION:Ljava/lang/String; = "key_action"

.field public static final KEY_CLASS:Ljava/lang/String; = "key_class"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "key_message"

.field public static final KEY_METHOD:Ljava/lang/String; = "key_method"

.field public static final KEY_PARAM_TYPE:Ljava/lang/String; = "key_param_type"

.field public static final KEY_PARAM_VALUE:Ljava/lang/String; = "key_param_value"

.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final NO_FUNCTION:Ljava/lang/String; = "NO_FUNCTION"

.field public static final REMOTE_VERSION:Ljava/lang/String; = "0.2.0"

.field public static final VERSION_DIVIDE:Ljava/lang/String; = "\\."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMajorVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.2.0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant;->getMajorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMajorVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getMinorVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.2.0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant;->getMinorVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMinorVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.class public final LcoeditCoreMessage/DeviceInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/DeviceInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/DeviceInfo;",
        "LcoeditCoreMessage/DeviceInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/DeviceInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

.field public static final DEVICE_INFO_CHANGE_TYPE_FIELD_NUMBER:I = 0x3

.field public static final DVC_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERMISSION_TYPE_FIELD_NUMBER:I = 0x4

.field public static final UID_FIELD_NUMBER:I = 0x2


# instance fields
.field private deviceInfoChangeType_:I

.field private dvcId_:Ljava/lang/String;

.field private permissionType_:I

.field private uid_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/DeviceInfo;

    invoke-direct {v0}, LcoeditCoreMessage/DeviceInfo;-><init>()V

    sput-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    const-class v1, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditCoreMessage/DeviceInfo;->dvcId_:Ljava/lang/String;

    iput-object v0, p0, LcoeditCoreMessage/DeviceInfo;->uid_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/DeviceInfo;->clearDeviceInfoChangeType()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/DeviceInfo;->clearDvcId()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/DeviceInfo;->clearPermissionType()V

    return-void
.end method

.method private clearDeviceInfoChangeType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditCoreMessage/DeviceInfo;->deviceInfoChangeType_:I

    return-void
.end method

.method private clearDvcId()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/DeviceInfo;->getDefaultInstance()LcoeditCoreMessage/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getDvcId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/DeviceInfo;->dvcId_:Ljava/lang/String;

    return-void
.end method

.method private clearPermissionType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditCoreMessage/DeviceInfo;->permissionType_:I

    return-void
.end method

.method private clearUid()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/DeviceInfo;->getDefaultInstance()LcoeditCoreMessage/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/DeviceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/DeviceInfo;->uid_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/DeviceInfo;->clearUid()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/DeviceInfo;LcoeditCoreMessage/DeviceInfoChangeType;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/DeviceInfo;->setDeviceInfoChangeType(LcoeditCoreMessage/DeviceInfoChangeType;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreMessage/DeviceInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/DeviceInfo;->setDeviceInfoChangeTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreMessage/DeviceInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/DeviceInfo;->setDvcId(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreMessage/DeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/DeviceInfo;->setDvcIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreMessage/DeviceInfo;LcoeditCoreMessage/PermissionType;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/DeviceInfo;->setPermissionType(LcoeditCoreMessage/PermissionType;)V

    return-void
.end method

.method public static bridge synthetic j(LcoeditCoreMessage/DeviceInfo;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/DeviceInfo;->setPermissionTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic k(LcoeditCoreMessage/DeviceInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/DeviceInfo;->setUid(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic l(LcoeditCoreMessage/DeviceInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/DeviceInfo;->setUidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic m()LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    return-object v0
.end method

.method public static newBuilder()LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/DeviceInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/DeviceInfo;)LcoeditCoreMessage/DeviceInfo$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/DeviceInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/DeviceInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/DeviceInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDeviceInfoChangeType(LcoeditCoreMessage/DeviceInfoChangeType;)V
    .locals 0

    invoke-virtual {p1}, LcoeditCoreMessage/DeviceInfoChangeType;->getNumber()I

    move-result p1

    iput p1, p0, LcoeditCoreMessage/DeviceInfo;->deviceInfoChangeType_:I

    return-void
.end method

.method private setDeviceInfoChangeTypeValue(I)V
    .locals 0

    iput p1, p0, LcoeditCoreMessage/DeviceInfo;->deviceInfoChangeType_:I

    return-void
.end method

.method private setDvcId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/DeviceInfo;->dvcId_:Ljava/lang/String;

    return-void
.end method

.method private setDvcIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/DeviceInfo;->dvcId_:Ljava/lang/String;

    return-void
.end method

.method private setPermissionType(LcoeditCoreMessage/PermissionType;)V
    .locals 0

    invoke-virtual {p1}, LcoeditCoreMessage/PermissionType;->getNumber()I

    move-result p1

    iput p1, p0, LcoeditCoreMessage/DeviceInfo;->permissionType_:I

    return-void
.end method

.method private setPermissionTypeValue(I)V
    .locals 0

    iput p1, p0, LcoeditCoreMessage/DeviceInfo;->permissionType_:I

    return-void
.end method

.method private setUid(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/DeviceInfo;->uid_:Ljava/lang/String;

    return-void
.end method

.method private setUidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/DeviceInfo;->uid_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/DeviceInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, LcoeditCoreMessage/DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/DeviceInfo;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "dvcId_"

    aput-object v0, p1, p3

    const-string p3, "uid_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "deviceInfoChangeType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "permissionType_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000c\u0004\u000c"

    sget-object p3, LcoeditCoreMessage/DeviceInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/DeviceInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/DeviceInfo$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/DeviceInfo$Builder;-><init>(LcoeditCoreMessage/f;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/DeviceInfo;

    invoke-direct {p1}, LcoeditCoreMessage/DeviceInfo;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceInfoChangeType()LcoeditCoreMessage/DeviceInfoChangeType;
    .locals 1

    iget v0, p0, LcoeditCoreMessage/DeviceInfo;->deviceInfoChangeType_:I

    invoke-static {v0}, LcoeditCoreMessage/DeviceInfoChangeType;->forNumber(I)LcoeditCoreMessage/DeviceInfoChangeType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LcoeditCoreMessage/DeviceInfoChangeType;->UNRECOGNIZED:LcoeditCoreMessage/DeviceInfoChangeType;

    :cond_0
    return-object v0
.end method

.method public getDeviceInfoChangeTypeValue()I
    .locals 1

    iget v0, p0, LcoeditCoreMessage/DeviceInfo;->deviceInfoChangeType_:I

    return v0
.end method

.method public getDvcId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/DeviceInfo;->dvcId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDvcIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/DeviceInfo;->dvcId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionType()LcoeditCoreMessage/PermissionType;
    .locals 1

    iget v0, p0, LcoeditCoreMessage/DeviceInfo;->permissionType_:I

    invoke-static {v0}, LcoeditCoreMessage/PermissionType;->forNumber(I)LcoeditCoreMessage/PermissionType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LcoeditCoreMessage/PermissionType;->UNRECOGNIZED:LcoeditCoreMessage/PermissionType;

    :cond_0
    return-object v0
.end method

.method public getPermissionTypeValue()I
    .locals 1

    iget v0, p0, LcoeditCoreMessage/DeviceInfo;->permissionType_:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/DeviceInfo;->uid_:Ljava/lang/String;

    return-object v0
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/DeviceInfo;->uid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

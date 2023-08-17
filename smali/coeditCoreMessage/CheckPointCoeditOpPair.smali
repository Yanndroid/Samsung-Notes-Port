.class public final LcoeditCoreMessage/CheckPointCoeditOpPair;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/CheckPointCoeditOpPairOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/CheckPointCoeditOpPair;",
        "LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;",
        ">;",
        "LcoeditCoreMessage/CheckPointCoeditOpPairOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHECKPOINT_FIELD_NUMBER:I = 0x1

.field public static final COEDIT_OPERATION_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

.field public static final DEVICE_INFO_FIELD_NUMBER:I = 0x4

.field public static final EXTRA_DATA_FIELD_NUMBER:I = 0x5

.field public static final OBJECT_INFO_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/CheckPointCoeditOpPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkpoint_:J

.field private coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private deviceInfo_:LcoeditCoreMessage/DeviceInfo;

.field private extraData_:Ljava/lang/String;

.field private objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-direct {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;-><init>()V

    sput-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    const-class v1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->extraData_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/CheckPointCoeditOpPair;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->addAllCoeditOperation(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllCoeditOperation(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllObjectInfo(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureObjectInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCoeditOperation(ILcoeditOperation/CoeditOperation;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCoeditOperation(LcoeditOperation/CoeditOperation;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addObjectInfo(ILcoeditCoreMessage/ObjectInfo;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureObjectInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addObjectInfo(LcoeditCoreMessage/ObjectInfo;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureObjectInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/CheckPointCoeditOpPair;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->addAllObjectInfo(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->addCoeditOperation(ILcoeditOperation/CoeditOperation;)V

    return-void
.end method

.method private clearCheckpoint()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->checkpoint_:J

    return-void
.end method

.method private clearCoeditOperation()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDeviceInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->deviceInfo_:LcoeditCoreMessage/DeviceInfo;

    return-void
.end method

.method private clearExtraData()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDefaultInstance()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getExtraData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->extraData_:Ljava/lang/String;

    return-void
.end method

.method private clearObjectInfo()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->addCoeditOperation(LcoeditOperation/CoeditOperation;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditCoreMessage/ObjectInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->addObjectInfo(ILcoeditCoreMessage/ObjectInfo;)V

    return-void
.end method

.method private ensureCoeditOperationIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureObjectInfoIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditCoreMessage/ObjectInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->addObjectInfo(LcoeditCoreMessage/ObjectInfo;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->clearCheckpoint()V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->clearCoeditOperation()V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->clearDeviceInfo()V

    return-void
.end method

.method public static bridge synthetic j(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->clearExtraData()V

    return-void
.end method

.method public static bridge synthetic k(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->clearObjectInfo()V

    return-void
.end method

.method public static bridge synthetic l(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->mergeDeviceInfo(LcoeditCoreMessage/DeviceInfo;)V

    return-void
.end method

.method public static bridge synthetic m(LcoeditCoreMessage/CheckPointCoeditOpPair;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->removeCoeditOperation(I)V

    return-void
.end method

.method private mergeDeviceInfo(LcoeditCoreMessage/DeviceInfo;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->deviceInfo_:LcoeditCoreMessage/DeviceInfo;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/DeviceInfo;->getDefaultInstance()LcoeditCoreMessage/DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->deviceInfo_:LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0}, LcoeditCoreMessage/DeviceInfo;->newBuilder(LcoeditCoreMessage/DeviceInfo;)LcoeditCoreMessage/DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/DeviceInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/DeviceInfo;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->deviceInfo_:LcoeditCoreMessage/DeviceInfo;

    return-void
.end method

.method public static bridge synthetic n(LcoeditCoreMessage/CheckPointCoeditOpPair;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->removeObjectInfo(I)V

    return-void
.end method

.method public static newBuilder()LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    return-object p0
.end method

.method public static bridge synthetic o(LcoeditCoreMessage/CheckPointCoeditOpPair;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->setCheckpoint(J)V

    return-void
.end method

.method public static bridge synthetic p(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->setCoeditOperation(ILcoeditOperation/CoeditOperation;)V

    return-void
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/CheckPointCoeditOpPair;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic q(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->setDeviceInfo(LcoeditCoreMessage/DeviceInfo;)V

    return-void
.end method

.method public static bridge synthetic r(LcoeditCoreMessage/CheckPointCoeditOpPair;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->setExtraData(Ljava/lang/String;)V

    return-void
.end method

.method private removeCoeditOperation(I)V
    .locals 1

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeObjectInfo(I)V
    .locals 1

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureObjectInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic s(LcoeditCoreMessage/CheckPointCoeditOpPair;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->setExtraDataBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private setCheckpoint(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->checkpoint_:J

    return-void
.end method

.method private setCoeditOperation(ILcoeditOperation/CoeditOperation;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDeviceInfo(LcoeditCoreMessage/DeviceInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->deviceInfo_:LcoeditCoreMessage/DeviceInfo;

    return-void
.end method

.method private setExtraData(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->extraData_:Ljava/lang/String;

    return-void
.end method

.method private setExtraDataBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->extraData_:Ljava/lang/String;

    return-void
.end method

.method private setObjectInfo(ILcoeditCoreMessage/ObjectInfo;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->ensureObjectInfoIsMutable()V

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic t(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditCoreMessage/ObjectInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->setObjectInfo(ILcoeditCoreMessage/ObjectInfo;)V

    return-void
.end method

.method public static bridge synthetic u()LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/CheckPointCoeditOpPair$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/CheckPointCoeditOpPair;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/CheckPointCoeditOpPair;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/CheckPointCoeditOpPair;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/CheckPointCoeditOpPair;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "checkpoint_"

    aput-object v0, p1, p3

    const-string p3, "coeditOperation_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, LcoeditOperation/CoeditOperation;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "objectInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, LcoeditCoreMessage/ObjectInfo;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "deviceInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "extraData_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u0002\u0002\u001b\u0003\u001b\u0004\t\u0005\u0208"

    sget-object p3, LcoeditCoreMessage/CheckPointCoeditOpPair;->DEFAULT_INSTANCE:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;-><init>(LcoeditCoreMessage/d;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-direct {p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;-><init>()V

    return-object p1

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

.method public getCheckpoint()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->checkpoint_:J

    return-wide v0
.end method

.method public getCoeditOperation(I)LcoeditOperation/CoeditOperation;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation;

    return-object p1
.end method

.method public getCoeditOperationCount()I
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCoeditOperationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCoeditOperationOrBuilder(I)LcoeditOperation/CoeditOperationOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperationOrBuilder;

    return-object p1
.end method

.method public getCoeditOperationOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditOperation/CoeditOperationOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDeviceInfo()LcoeditCoreMessage/DeviceInfo;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->deviceInfo_:LcoeditCoreMessage/DeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/DeviceInfo;->getDefaultInstance()LcoeditCoreMessage/DeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->extraData_:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraDataBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->extraData_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getObjectInfo(I)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ObjectInfo;

    return-object p1
.end method

.method public getObjectInfoCount()I
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getObjectInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getObjectInfoOrBuilder(I)LcoeditCoreMessage/ObjectInfoOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ObjectInfoOrBuilder;

    return-object p1
.end method

.method public getObjectInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditCoreMessage/ObjectInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->objectInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/CheckPointCoeditOpPair;->deviceInfo_:LcoeditCoreMessage/DeviceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

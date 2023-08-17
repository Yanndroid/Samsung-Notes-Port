.class public final LcoeditOperation/CedOps;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CedOpsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOperation/CedOps$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOperation/CedOps;",
        "LcoeditOperation/CedOps$Builder;",
        ">;",
        "LcoeditOperation/CedOpsOrBuilder;"
    }
.end annotation


# static fields
.field public static final COEDIT_OPERATION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LcoeditOperation/CedOps;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CedOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOperation/CedOps;

    invoke-direct {v0}, LcoeditOperation/CedOps;-><init>()V

    sput-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    const-class v1, LcoeditOperation/CedOps;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic a(LcoeditOperation/CedOps;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CedOps;->addAllCoeditOperation(Ljava/lang/Iterable;)V

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

    invoke-direct {p0}, LcoeditOperation/CedOps;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCoeditOperation(ILcoeditOperation/CoeditOperation;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CedOps;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCoeditOperation(LcoeditOperation/CoeditOperation;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CedOps;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditOperation/CedOps;ILcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CedOps;->addCoeditOperation(ILcoeditOperation/CoeditOperation;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOperation/CedOps;LcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CedOps;->addCoeditOperation(LcoeditOperation/CoeditOperation;)V

    return-void
.end method

.method private clearCoeditOperation()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOperation/CedOps;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CedOps;->clearCoeditOperation()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOperation/CedOps;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOperation/CedOps;->removeCoeditOperation(I)V

    return-void
.end method

.method private ensureCoeditOperationIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditOperation/CedOps;ILcoeditOperation/CoeditOperation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOperation/CedOps;->setCoeditOperation(ILcoeditOperation/CoeditOperation;)V

    return-void
.end method

.method public static bridge synthetic g()LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    return-object v0
.end method

.method public static newBuilder()LcoeditOperation/CedOps$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOperation/CedOps$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOperation/CedOps;)LcoeditOperation/CedOps$Builder;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOperation/CedOps;
    .locals 1

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOperation/CedOps;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOperation/CedOps;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCoeditOperation(I)V
    .locals 1

    invoke-direct {p0}, LcoeditOperation/CedOps;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCoeditOperation(ILcoeditOperation/CoeditOperation;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOperation/CedOps;->ensureCoeditOperationIsMutable()V

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditOperation/CedOps$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditOperation/CedOps;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOperation/CedOps;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOperation/CedOps;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOperation/CedOps;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "coeditOperation_"

    aput-object v0, p1, p3

    const-class p3, LcoeditOperation/CoeditOperation;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, LcoeditOperation/CedOps;->DEFAULT_INSTANCE:LcoeditOperation/CedOps;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOperation/CedOps$Builder;

    invoke-direct {p1, p3}, LcoeditOperation/CedOps$Builder;-><init>(LcoeditOperation/a;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOperation/CedOps;

    invoke-direct {p1}, LcoeditOperation/CedOps;-><init>()V

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

.method public getCoeditOperation(I)LcoeditOperation/CoeditOperation;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation;

    return-object p1
.end method

.method public getCoeditOperationCount()I
    .locals 1

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

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

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCoeditOperationOrBuilder(I)LcoeditOperation/CoeditOperationOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

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

    iget-object v0, p0, LcoeditOperation/CedOps;->coeditOperation_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.class public final LcoeditOtMessage/ComposeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/ComposeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOtMessage/ComposeRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOtMessage/ComposeRequest;",
        "LcoeditOtMessage/ComposeRequest$Builder;",
        ">;",
        "LcoeditOtMessage/ComposeRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

.field public static final PAIRS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/ComposeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pairs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOtMessage/ComposeRequest;

    invoke-direct {v0}, LcoeditOtMessage/ComposeRequest;-><init>()V

    sput-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    const-class v1, LcoeditOtMessage/ComposeRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic a(LcoeditOtMessage/ComposeRequest;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/ComposeRequest;->addAllPairs(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllPairs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LcoeditOtMessage/ComposeRequest;->ensurePairsIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPairs(ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/ComposeRequest;->ensurePairsIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPairs(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/ComposeRequest;->ensurePairsIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic b(LcoeditOtMessage/ComposeRequest;ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOtMessage/ComposeRequest;->addPairs(ILcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOtMessage/ComposeRequest;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/ComposeRequest;->addPairs(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private clearPairs()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOtMessage/ComposeRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/ComposeRequest;->clearPairs()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOtMessage/ComposeRequest;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/ComposeRequest;->removePairs(I)V

    return-void
.end method

.method private ensurePairsIsMutable()V
    .locals 2

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(LcoeditOtMessage/ComposeRequest;ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOtMessage/ComposeRequest;->setPairs(ILcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic g()LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    return-object v0
.end method

.method public static newBuilder()LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/ComposeRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOtMessage/ComposeRequest;)LcoeditOtMessage/ComposeRequest$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeRequest;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/ComposeRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePairs(I)V
    .locals 1

    invoke-direct {p0}, LcoeditOtMessage/ComposeRequest;->ensurePairsIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setPairs(ILcoeditOtMessage/IdxCedOpsPair;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, LcoeditOtMessage/ComposeRequest;->ensurePairsIsMutable()V

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditOtMessage/ComposeRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditOtMessage/ComposeRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOtMessage/ComposeRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOtMessage/ComposeRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOtMessage/ComposeRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "pairs_"

    aput-object v0, p1, p3

    const-class p3, LcoeditOtMessage/IdxCedOpsPair;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, LcoeditOtMessage/ComposeRequest;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOtMessage/ComposeRequest$Builder;

    invoke-direct {p1, p3}, LcoeditOtMessage/ComposeRequest$Builder;-><init>(LcoeditOtMessage/a;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOtMessage/ComposeRequest;

    invoke-direct {p1}, LcoeditOtMessage/ComposeRequest;-><init>()V

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

.method public getPairs(I)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    return-object p1
.end method

.method public getPairsCount()I
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPairsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPairsOrBuilder(I)LcoeditOtMessage/IdxCedOpsPairOrBuilder;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPairOrBuilder;

    return-object p1
.end method

.method public getPairsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "LcoeditOtMessage/IdxCedOpsPairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LcoeditOtMessage/ComposeRequest;->pairs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

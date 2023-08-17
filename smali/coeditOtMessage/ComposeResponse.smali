.class public final LcoeditOtMessage/ComposeResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/ComposeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOtMessage/ComposeResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOtMessage/ComposeResponse;",
        "LcoeditOtMessage/ComposeResponse$Builder;",
        ">;",
        "LcoeditOtMessage/ComposeResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

.field public static final PAIRS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/ComposeResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pairs_:LcoeditOtMessage/IdxCedOpsPair;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOtMessage/ComposeResponse;

    invoke-direct {v0}, LcoeditOtMessage/ComposeResponse;-><init>()V

    sput-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    const-class v1, LcoeditOtMessage/ComposeResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(LcoeditOtMessage/ComposeResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/ComposeResponse;->clearPairs()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditOtMessage/ComposeResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/ComposeResponse;->mergePairs(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOtMessage/ComposeResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/ComposeResponse;->setPairs(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private clearPairs()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOtMessage/ComposeResponse;->pairs_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method public static bridge synthetic d()LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    return-object v0
.end method

.method private mergePairs(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOtMessage/ComposeResponse;->pairs_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOtMessage/ComposeResponse;->pairs_:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    :cond_0
    iput-object p1, p0, LcoeditOtMessage/ComposeResponse;->pairs_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method public static newBuilder()LcoeditOtMessage/ComposeResponse$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/ComposeResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOtMessage/ComposeResponse;)LcoeditOtMessage/ComposeResponse$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/ComposeResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/ComposeResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/ComposeResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPairs(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOtMessage/ComposeResponse;->pairs_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, LcoeditOtMessage/ComposeResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditOtMessage/ComposeResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOtMessage/ComposeResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOtMessage/ComposeResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOtMessage/ComposeResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "pairs_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    sget-object p3, LcoeditOtMessage/ComposeResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/ComposeResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOtMessage/ComposeResponse$Builder;

    invoke-direct {p1, p3}, LcoeditOtMessage/ComposeResponse$Builder;-><init>(LcoeditOtMessage/b;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOtMessage/ComposeResponse;

    invoke-direct {p1}, LcoeditOtMessage/ComposeResponse;-><init>()V

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

.method public getPairs()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/ComposeResponse;->pairs_:LcoeditOtMessage/IdxCedOpsPair;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasPairs()Z
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/ComposeResponse;->pairs_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

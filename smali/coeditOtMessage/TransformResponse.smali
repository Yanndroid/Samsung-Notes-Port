.class public final LcoeditOtMessage/TransformResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/TransformResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOtMessage/TransformResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOtMessage/TransformResponse;",
        "LcoeditOtMessage/TransformResponse$Builder;",
        ">;",
        "LcoeditOtMessage/TransformResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

.field public static final FIRST_TRANSFORMED_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/TransformResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECOND_TRANSFORMED_FIELD_NUMBER:I = 0x2


# instance fields
.field private firstTransformed_:LcoeditOtMessage/IdxCedOpsPair;

.field private secondTransformed_:LcoeditOtMessage/IdxCedOpsPair;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOtMessage/TransformResponse;

    invoke-direct {v0}, LcoeditOtMessage/TransformResponse;-><init>()V

    sput-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    const-class v1, LcoeditOtMessage/TransformResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(LcoeditOtMessage/TransformResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/TransformResponse;->clearFirstTransformed()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditOtMessage/TransformResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/TransformResponse;->clearSecondTransformed()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformResponse;->mergeFirstTransformed(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method private clearFirstTransformed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOtMessage/TransformResponse;->firstTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method private clearSecondTransformed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOtMessage/TransformResponse;->secondTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method public static bridge synthetic d(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformResponse;->mergeSecondTransformed(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformResponse;->setFirstTransformed(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditOtMessage/TransformResponse;LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/TransformResponse;->setSecondTransformed(LcoeditOtMessage/IdxCedOpsPair;)V

    return-void
.end method

.method public static bridge synthetic g()LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    return-object v0
.end method

.method private mergeFirstTransformed(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOtMessage/TransformResponse;->firstTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOtMessage/TransformResponse;->firstTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    :cond_0
    iput-object p1, p0, LcoeditOtMessage/TransformResponse;->firstTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method private mergeSecondTransformed(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOtMessage/TransformResponse;->secondTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOtMessage/TransformResponse;->secondTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0}, LcoeditOtMessage/IdxCedOpsPair;->newBuilder(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/IdxCedOpsPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOtMessage/IdxCedOpsPair;

    :cond_0
    iput-object p1, p0, LcoeditOtMessage/TransformResponse;->secondTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method public static newBuilder()LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/TransformResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOtMessage/TransformResponse;)LcoeditOtMessage/TransformResponse$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/TransformResponse;
    .locals 1

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/TransformResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/TransformResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFirstTransformed(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOtMessage/TransformResponse;->firstTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method

.method private setSecondTransformed(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOtMessage/TransformResponse;->secondTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditOtMessage/TransformResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditOtMessage/TransformResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOtMessage/TransformResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOtMessage/TransformResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOtMessage/TransformResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "firstTransformed_"

    aput-object v0, p1, p3

    const-string p3, "secondTransformed_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    sget-object p3, LcoeditOtMessage/TransformResponse;->DEFAULT_INSTANCE:LcoeditOtMessage/TransformResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOtMessage/TransformResponse$Builder;

    invoke-direct {p1, p3}, LcoeditOtMessage/TransformResponse$Builder;-><init>(LcoeditOtMessage/g;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOtMessage/TransformResponse;

    invoke-direct {p1}, LcoeditOtMessage/TransformResponse;-><init>()V

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

.method public getFirstTransformed()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformResponse;->firstTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSecondTransformed()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformResponse;->secondTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasFirstTransformed()Z
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformResponse;->firstTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSecondTransformed()Z
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/TransformResponse;->secondTransformed_:LcoeditOtMessage/IdxCedOpsPair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

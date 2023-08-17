.class public final LcoeditObjectStg/ResponseResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditObjectStg/ResponseResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObjectStg/ResponseResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditObjectStg/ResponseResult;",
        "LcoeditObjectStg/ResponseResult$Builder;",
        ">;",
        "LcoeditObjectStg/ResponseResultOrBuilder;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

.field public static final LCODE_FIELD_NUMBER:I = 0x3

.field public static final LMSG_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectStg/ResponseResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RCODE_FIELD_NUMBER:I = 0x2

.field public static final RMSG_FIELD_NUMBER:I = 0x4


# instance fields
.field private code_:I

.field private lcode_:I

.field private lmsg_:Ljava/lang/String;

.field private rcode_:I

.field private rmsg_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditObjectStg/ResponseResult;

    invoke-direct {v0}, LcoeditObjectStg/ResponseResult;-><init>()V

    sput-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    const-class v1, LcoeditObjectStg/ResponseResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditObjectStg/ResponseResult;->rmsg_:Ljava/lang/String;

    iput-object v0, p0, LcoeditObjectStg/ResponseResult;->lmsg_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditObjectStg/ResponseResult;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/ResponseResult;->clearCode()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditObjectStg/ResponseResult;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/ResponseResult;->clearLcode()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditObjectStg/ResponseResult;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/ResponseResult;->clearLmsg()V

    return-void
.end method

.method private clearCode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditObjectStg/ResponseResult;->code_:I

    return-void
.end method

.method private clearLcode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditObjectStg/ResponseResult;->lcode_:I

    return-void
.end method

.method private clearLmsg()V
    .locals 1

    invoke-static {}, LcoeditObjectStg/ResponseResult;->getDefaultInstance()LcoeditObjectStg/ResponseResult;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditObjectStg/ResponseResult;->lmsg_:Ljava/lang/String;

    return-void
.end method

.method private clearRcode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditObjectStg/ResponseResult;->rcode_:I

    return-void
.end method

.method private clearRmsg()V
    .locals 1

    invoke-static {}, LcoeditObjectStg/ResponseResult;->getDefaultInstance()LcoeditObjectStg/ResponseResult;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditObjectStg/ResponseResult;->rmsg_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(LcoeditObjectStg/ResponseResult;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/ResponseResult;->clearRcode()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditObjectStg/ResponseResult;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/ResponseResult;->clearRmsg()V

    return-void
.end method

.method public static bridge synthetic f(LcoeditObjectStg/ResponseResult;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/ResponseResult;->setCode(I)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditObjectStg/ResponseResult;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/ResponseResult;->setLcode(I)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditObjectStg/ResponseResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/ResponseResult;->setLmsg(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditObjectStg/ResponseResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/ResponseResult;->setLmsgBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic j(LcoeditObjectStg/ResponseResult;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/ResponseResult;->setRcode(I)V

    return-void
.end method

.method public static bridge synthetic k(LcoeditObjectStg/ResponseResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/ResponseResult;->setRmsg(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic l(LcoeditObjectStg/ResponseResult;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectStg/ResponseResult;->setRmsgBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic m()LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    return-object v0
.end method

.method public static newBuilder()LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditObjectStg/ResponseResult$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditObjectStg/ResponseResult;)LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectStg/ResponseResult;
    .locals 1

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectStg/ResponseResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectStg/ResponseResult;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCode(I)V
    .locals 0

    iput p1, p0, LcoeditObjectStg/ResponseResult;->code_:I

    return-void
.end method

.method private setLcode(I)V
    .locals 0

    iput p1, p0, LcoeditObjectStg/ResponseResult;->lcode_:I

    return-void
.end method

.method private setLmsg(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectStg/ResponseResult;->lmsg_:Ljava/lang/String;

    return-void
.end method

.method private setLmsgBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditObjectStg/ResponseResult;->lmsg_:Ljava/lang/String;

    return-void
.end method

.method private setRcode(I)V
    .locals 0

    iput p1, p0, LcoeditObjectStg/ResponseResult;->rcode_:I

    return-void
.end method

.method private setRmsg(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectStg/ResponseResult;->rmsg_:Ljava/lang/String;

    return-void
.end method

.method private setRmsgBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditObjectStg/ResponseResult;->rmsg_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditObjectStg/ResponseResult$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditObjectStg/ResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditObjectStg/ResponseResult;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditObjectStg/ResponseResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditObjectStg/ResponseResult;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "code_"

    aput-object v0, p1, p3

    const-string p3, "rcode_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "lcode_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "rmsg_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "lmsg_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0208\u0005\u0208"

    sget-object p3, LcoeditObjectStg/ResponseResult;->DEFAULT_INSTANCE:LcoeditObjectStg/ResponseResult;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditObjectStg/ResponseResult$Builder;

    invoke-direct {p1, p3}, LcoeditObjectStg/ResponseResult$Builder;-><init>(LcoeditObjectStg/f;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditObjectStg/ResponseResult;

    invoke-direct {p1}, LcoeditObjectStg/ResponseResult;-><init>()V

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

.method public getCode()I
    .locals 1

    iget v0, p0, LcoeditObjectStg/ResponseResult;->code_:I

    return v0
.end method

.method public getLcode()I
    .locals 1

    iget v0, p0, LcoeditObjectStg/ResponseResult;->lcode_:I

    return v0
.end method

.method public getLmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditObjectStg/ResponseResult;->lmsg_:Ljava/lang/String;

    return-object v0
.end method

.method public getLmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditObjectStg/ResponseResult;->lmsg_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRcode()I
    .locals 1

    iget v0, p0, LcoeditObjectStg/ResponseResult;->rcode_:I

    return v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditObjectStg/ResponseResult;->rmsg_:Ljava/lang/String;

    return-object v0
.end method

.method public getRmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditObjectStg/ResponseResult;->rmsg_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.class public final LcoeditOtMessage/IdxCedOpsPair;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/IdxCedOpsPairOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditOtMessage/IdxCedOpsPair$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditOtMessage/IdxCedOpsPair;",
        "LcoeditOtMessage/IdxCedOpsPair$Builder;",
        ">;",
        "LcoeditOtMessage/IdxCedOpsPairOrBuilder;"
    }
.end annotation


# static fields
.field public static final CEDOPS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

.field public static final IDX_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cedOps_:LcoeditOperation/CedOps;

.field private idx_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-direct {v0}, LcoeditOtMessage/IdxCedOpsPair;-><init>()V

    sput-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    const-class v1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/IdxCedOpsPair;->clearCedOps()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditOtMessage/IdxCedOpsPair;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/IdxCedOpsPair;->clearIdx()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditOtMessage/IdxCedOpsPair;LcoeditOperation/CedOps;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/IdxCedOpsPair;->mergeCedOps(LcoeditOperation/CedOps;)V

    return-void
.end method

.method private clearCedOps()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditOtMessage/IdxCedOpsPair;->cedOps_:LcoeditOperation/CedOps;

    return-void
.end method

.method private clearIdx()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditOtMessage/IdxCedOpsPair;->idx_:J

    return-void
.end method

.method public static bridge synthetic d(LcoeditOtMessage/IdxCedOpsPair;LcoeditOperation/CedOps;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditOtMessage/IdxCedOpsPair;->setCedOps(LcoeditOperation/CedOps;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditOtMessage/IdxCedOpsPair;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditOtMessage/IdxCedOpsPair;->setIdx(J)V

    return-void
.end method

.method public static bridge synthetic f()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    return-object v0
.end method

.method private mergeCedOps(LcoeditOperation/CedOps;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditOtMessage/IdxCedOpsPair;->cedOps_:LcoeditOperation/CedOps;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditOperation/CedOps;->getDefaultInstance()LcoeditOperation/CedOps;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditOtMessage/IdxCedOpsPair;->cedOps_:LcoeditOperation/CedOps;

    invoke-static {v0}, LcoeditOperation/CedOps;->newBuilder(LcoeditOperation/CedOps;)LcoeditOperation/CedOps$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditOperation/CedOps$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CedOps;

    :cond_0
    iput-object p1, p0, LcoeditOtMessage/IdxCedOpsPair;->cedOps_:LcoeditOperation/CedOps;

    return-void
.end method

.method public static newBuilder()LcoeditOtMessage/IdxCedOpsPair$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditOtMessage/IdxCedOpsPair;)LcoeditOtMessage/IdxCedOpsPair$Builder;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditOtMessage/IdxCedOpsPair;
    .locals 1

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditOtMessage/IdxCedOpsPair;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditOtMessage/IdxCedOpsPair;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCedOps(LcoeditOperation/CedOps;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditOtMessage/IdxCedOpsPair;->cedOps_:LcoeditOperation/CedOps;

    return-void
.end method

.method private setIdx(J)V
    .locals 0

    iput-wide p1, p0, LcoeditOtMessage/IdxCedOpsPair;->idx_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditOtMessage/IdxCedOpsPair$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditOtMessage/IdxCedOpsPair;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditOtMessage/IdxCedOpsPair;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditOtMessage/IdxCedOpsPair;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditOtMessage/IdxCedOpsPair;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "idx_"

    aput-object v0, p1, p3

    const-string p3, "cedOps_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\t"

    sget-object p3, LcoeditOtMessage/IdxCedOpsPair;->DEFAULT_INSTANCE:LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditOtMessage/IdxCedOpsPair$Builder;

    invoke-direct {p1, p3}, LcoeditOtMessage/IdxCedOpsPair$Builder;-><init>(LcoeditOtMessage/c;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditOtMessage/IdxCedOpsPair;

    invoke-direct {p1}, LcoeditOtMessage/IdxCedOpsPair;-><init>()V

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

.method public getCedOps()LcoeditOperation/CedOps;
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/IdxCedOpsPair;->cedOps_:LcoeditOperation/CedOps;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditOperation/CedOps;->getDefaultInstance()LcoeditOperation/CedOps;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIdx()J
    .locals 2

    iget-wide v0, p0, LcoeditOtMessage/IdxCedOpsPair;->idx_:J

    return-wide v0
.end method

.method public hasCedOps()Z
    .locals 1

    iget-object v0, p0, LcoeditOtMessage/IdxCedOpsPair;->cedOps_:LcoeditOperation/CedOps;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

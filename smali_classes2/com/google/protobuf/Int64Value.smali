.class public final Lcom/google/protobuf/Int64Value;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Int64ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Int64Value$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/Int64Value;",
        "Lcom/google/protobuf/Int64Value$Builder;",
        ">;",
        "Lcom/google/protobuf/Int64ValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Int64Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/Int64Value;

    invoke-direct {v0}, Lcom/google/protobuf/Int64Value;-><init>()V

    sput-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    const-class v1, Lcom/google/protobuf/Int64Value;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/protobuf/Int64Value;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Int64Value;->setValue(J)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/protobuf/Int64Value;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/Int64Value;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/Int64Value;->value_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Int64Value$Builder;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int64Value$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$Builder;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value$Builder;

    return-object p0
.end method

.method public static of(J)Lcom/google/protobuf/Int64Value;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/Int64Value;->newBuilder()Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/Int64Value$Builder;->setValue(J)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Int64Value;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Int64Value;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Int64Value;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/protobuf/Int64Value;->value_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lcom/google/protobuf/Int64Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lcom/google/protobuf/Int64Value;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/protobuf/Int64Value;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/protobuf/Int64Value;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/protobuf/Int64Value;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0002"

    sget-object p3, Lcom/google/protobuf/Int64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/Int64Value;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/protobuf/Int64Value$Builder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/Int64Value$Builder;-><init>(Lcom/google/protobuf/Int64Value$1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/protobuf/Int64Value;

    invoke-direct {p1}, Lcom/google/protobuf/Int64Value;-><init>()V

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

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/google/protobuf/Int64Value;->value_:J

    return-wide v0
.end method

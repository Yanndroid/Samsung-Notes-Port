.class final Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OkHttpChannelDefaultPortProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/okhttp/OkHttpChannelBuilder;


# direct methods
.method private constructor <init>(Lio/grpc/okhttp/OkHttpChannelBuilder;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;->this$0:Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/okhttp/OkHttpChannelBuilder;Lio/grpc/okhttp/OkHttpChannelBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;-><init>(Lio/grpc/okhttp/OkHttpChannelBuilder;)V

    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .locals 1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpChannelDefaultPortProvider;->this$0:Lio/grpc/okhttp/OkHttpChannelBuilder;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpChannelBuilder;->getDefaultPort()I

    move-result v0

    return v0
.end method

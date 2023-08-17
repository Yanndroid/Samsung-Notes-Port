.class abstract Lio/grpc/stub/ClientCalls$StartableListener;
.super Lio/grpc/ClientCall$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StartableListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall$Listener<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/stub/ClientCalls$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$StartableListener;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onStart()V
.end method

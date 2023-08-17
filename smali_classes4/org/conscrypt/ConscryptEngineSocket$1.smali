.class Lorg/conscrypt/ConscryptEngineSocket$1;
.super Lorg/conscrypt/HandshakeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/conscrypt/ConscryptEngineSocket;->newEngine(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngineSocket;)Lorg/conscrypt/ConscryptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$socket:Lorg/conscrypt/ConscryptEngineSocket;


# direct methods
.method public constructor <init>(Lorg/conscrypt/ConscryptEngineSocket;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/ConscryptEngineSocket$1;->val$socket:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Lorg/conscrypt/HandshakeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandshakeFinished()V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngineSocket$1;->val$socket:Lorg/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngineSocket;->access$000(Lorg/conscrypt/ConscryptEngineSocket;)V

    return-void
.end method

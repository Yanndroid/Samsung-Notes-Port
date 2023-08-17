.class public Lcom/google/api/services/drive/Drive$Changes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Changes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Changes$Watch;,
        Lcom/google/api/services/drive/Drive$Changes$List;,
        Lcom/google/api/services/drive/Drive$Changes$GetStartPageToken;,
        Lcom/google/api/services/drive/Drive$Changes$Get;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Changes$Get;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Changes$Get;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Changes$Get;-><init>(Lcom/google/api/services/drive/Drive$Changes;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public getStartPageToken()Lcom/google/api/services/drive/Drive$Changes$GetStartPageToken;
    .locals 2

    new-instance v0, Lcom/google/api/services/drive/Drive$Changes$GetStartPageToken;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Changes$GetStartPageToken;-><init>(Lcom/google/api/services/drive/Drive$Changes;)V

    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list()Lcom/google/api/services/drive/Drive$Changes$List;
    .locals 2

    new-instance v0, Lcom/google/api/services/drive/Drive$Changes$List;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Changes$List;-><init>(Lcom/google/api/services/drive/Drive$Changes;)V

    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public watch(Lcom/google/api/services/drive/model/Channel;)Lcom/google/api/services/drive/Drive$Changes$Watch;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Changes$Watch;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Changes$Watch;-><init>(Lcom/google/api/services/drive/Drive$Changes;Lcom/google/api/services/drive/model/Channel;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.class public Lcom/google/api/services/drive/Drive$Parents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Parents$List;,
        Lcom/google/api/services/drive/Drive$Parents$Insert;,
        Lcom/google/api/services/drive/Drive$Parents$Get;,
        Lcom/google/api/services/drive/Drive$Parents$Delete;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Parents;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Parents$Delete;-><init>(Lcom/google/api/services/drive/Drive$Parents;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Parents;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Get;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Parents$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Parents$Get;-><init>(Lcom/google/api/services/drive/Drive$Parents;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Parents;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/drive/model/ParentReference;)Lcom/google/api/services/drive/Drive$Parents$Insert;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Parents$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Parents$Insert;-><init>(Lcom/google/api/services/drive/Drive$Parents;Ljava/lang/String;Lcom/google/api/services/drive/model/ParentReference;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Parents;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$List;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Parents$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Parents$List;-><init>(Lcom/google/api/services/drive/Drive$Parents;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Parents;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

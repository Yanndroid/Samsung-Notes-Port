.class public Lcom/google/api/services/drive/Drive$Permissions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Permissions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Permissions$Update;,
        Lcom/google/api/services/drive/Drive$Permissions$Patch;,
        Lcom/google/api/services/drive/Drive$Permissions$List;,
        Lcom/google/api/services/drive/Drive$Permissions$Insert;,
        Lcom/google/api/services/drive/Drive$Permissions$GetIdForEmail;,
        Lcom/google/api/services/drive/Drive$Permissions$Get;,
        Lcom/google/api/services/drive/Drive$Permissions$Delete;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Delete;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Get;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public getIdForEmail(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$GetIdForEmail;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$GetIdForEmail;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$GetIdForEmail;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)Lcom/google/api/services/drive/Drive$Permissions$Insert;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Insert;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$List;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$List;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)Lcom/google/api/services/drive/Drive$Permissions$Patch;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Permissions$Patch;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Permissions$Update;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

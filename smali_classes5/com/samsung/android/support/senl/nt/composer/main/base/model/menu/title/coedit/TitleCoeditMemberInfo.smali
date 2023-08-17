.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADD_MEMBER:Ljava/lang/String; = "AddMember"


# instance fields
.field private mLeader:Z

.field private mMemberId:Ljava/lang/String;

.field private mMemberName:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mWriter:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mMemberId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mMemberName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMemberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mMemberName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isLeader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mLeader:Z

    return v0
.end method

.method public isWriter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mWriter:Z

    return v0
.end method

.method public setLeader(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mLeader:Z

    return-void
.end method

.method public setWriter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/title/coedit/TitleCoeditMemberInfo;->mWriter:Z

    return-void
.end method

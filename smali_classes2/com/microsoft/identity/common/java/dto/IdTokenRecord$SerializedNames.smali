.class public Lcom/microsoft/identity/common/java/dto/IdTokenRecord$SerializedNames;
.super Lcom/microsoft/identity/common/java/dto/Credential$SerializedNames;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/dto/IdTokenRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedNames"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "authority"

.field public static final REALM:Ljava/lang/String; = "realm"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/Credential$SerializedNames;-><init>()V

    return-void
.end method

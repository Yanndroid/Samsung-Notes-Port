.class final enum Lcom/google/common/reflect/Types$JavaVersion$4;
.super Lcom/google/common/reflect/Types$JavaVersion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types$JavaVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;ILcom/google/common/reflect/Types$1;)V

    return-void
.end method


# virtual methods
.method public jdkTypeDuplicatesOwnerName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->typeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->JAVA8:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/Types$JavaVersion;->usedInGenericType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

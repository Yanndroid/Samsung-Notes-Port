.class Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedefinitionForGroup"
.end annotation


# instance fields
.field private group:Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

.field private seenRedefinition:Z


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->seenRedefinition:Z

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->group:Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    return-void
.end method


# virtual methods
.method public getGroup()Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->group:Lorg/apache/xmlbeans/impl/schema/SchemaModelGroupImpl;

    return-object v0
.end method

.method public isSeenRedefinition()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->seenRedefinition:Z

    return v0
.end method

.method public setSeenRedefinition(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/StscComplexTypeResolver$RedefinitionForGroup;->seenRedefinition:Z

    return-void
.end method

.class public abstract Lorg/apache/xmlbeans/SchemaComponent$Ref;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/SchemaComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Ref"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public _handle:Ljava/lang/String;

.field private volatile _schemaComponent:Lorg/apache/xmlbeans/SchemaComponent;

.field private _schemaTypeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/SchemaComponent$1;->class$org$apache$xmlbeans$SchemaComponent:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.SchemaComponent"

    invoke-static {v0}, Lorg/apache/xmlbeans/SchemaComponent$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/SchemaComponent$1;->class$org$apache$xmlbeans$SchemaComponent:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaComponent:Lorg/apache/xmlbeans/SchemaComponent;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaTypeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;

    iput-object p2, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_handle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getComponent()Lorg/apache/xmlbeans/SchemaComponent;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaComponent:Lorg/apache/xmlbeans/SchemaComponent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_handle:Ljava/lang/String;

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaComponent:Lorg/apache/xmlbeans/SchemaComponent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_handle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaTypeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaComponent:Lorg/apache/xmlbeans/SchemaComponent;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaTypeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaComponent:Lorg/apache/xmlbeans/SchemaComponent;

    return-object v0
.end method

.method public abstract getComponentType()I
.end method

.method public final getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/SchemaComponent$Ref;->_schemaTypeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;

    return-object v0
.end method

.class public interface abstract annotation Ljavax/annotation/sql/DataSourceDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/annotation/sql/DataSourceDefinition;
        databaseName = ""
        description = ""
        initialPoolSize = -0x1
        isolationLevel = -0x1
        loginTimeout = 0x0
        maxIdleTime = -0x1
        maxPoolSize = -0x1
        maxStatements = -0x1
        minPoolSize = -0x1
        password = ""
        portNumber = -0x1
        properties = {}
        serverName = "localhost"
        transactional = true
        url = ""
        user = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Ljavax/annotation/sql/DataSourceDefinitions;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract className()Ljava/lang/String;
.end method

.method public abstract databaseName()Ljava/lang/String;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract initialPoolSize()I
.end method

.method public abstract isolationLevel()I
.end method

.method public abstract loginTimeout()I
.end method

.method public abstract maxIdleTime()I
.end method

.method public abstract maxPoolSize()I
.end method

.method public abstract maxStatements()I
.end method

.method public abstract minPoolSize()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract password()Ljava/lang/String;
.end method

.method public abstract portNumber()I
.end method

.method public abstract properties()[Ljava/lang/String;
.end method

.method public abstract serverName()Ljava/lang/String;
.end method

.method public abstract transactional()Z
.end method

.method public abstract url()Ljava/lang/String;
.end method

.method public abstract user()Ljava/lang/String;
.end method

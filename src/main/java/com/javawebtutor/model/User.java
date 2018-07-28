
package com.javawebtutor.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_details")
public class User implements Serializable {
    
    @Id @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
    private String firstName;
    private String middleName;
    private String lastName;
    private String email;
    private String userId;
    private String password;
    private String tech;
    private String mHead;
    private int requirements;
    private int submissions;
    private int vreq;
    private int preq;
    private int sreq;
    private int vsub;
    private int ssub;
    public int getVreq() {
		return vreq;
	}


	public void setVreq(int vreq) {
		this.vreq = vreq;
	}


	public int getPreq() {
		return preq;
	}


	public void setPreq(int preq) {
		this.preq = preq;
	}


	public int getSreq() {
		return sreq;
	}


	public void setSreq(int sreq) {
		this.sreq = sreq;
	}


	public int getVsub() {
		return vsub;
	}


	public void setVsub(int vsub) {
		this.vsub = vsub;
	}


	public int getSsub() {
		return ssub;
	}


	public void setSsub(int ssub) {
		this.ssub = ssub;
	}


	public int getPsub() {
		return psub;
	}


	public void setPsub(int psub) {
		this.psub = psub;
	}

	private int psub;
    
    public User() {
    }

    
    public User(String firstName, String middleName, String lastName, String email, String userId, String password, String tech, String mHead) {
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.email = email;
        this.userId = userId;
        this.password = password;
        this.tech= tech;
        this.mHead= mHead;
    }


    public Long getId() {
        return id;
    }

     public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


	public String getTech() {
		return tech;
	}


	public void setTech(String tech) {
		this.tech = tech;
	}


	public String getmHead() {
		return mHead;
	}


	public void setmHead(String mHead) {
		this.mHead = mHead;
	}


	public int getRequirements() {
		return requirements;
	}


	public void setRequirements(int requirements) {
		this.requirements = this.requirements + requirements;
	}


	public int getSubmissions() {
		return submissions;
	}


	public void setSubmissions(int submissions) {
		this.submissions = this.submissions + submissions;
	}
	
	public void updateRRS(int vreq,int sreq,int preq,int vsub, int ssub,int psub){
		this.vreq = this.vreq + vreq;
		this.sreq = this.sreq + sreq;
		this.preq = this.preq + preq;
		this.vsub = this.vsub + vsub;
		this.ssub = this.ssub + ssub;
		this.psub = this.psub + psub;
	}


	        
}
